;;; check-templates.el --- Validate Tempel template data files -*- lexical-binding: t -*-

;; Commentary:
;;
;; Validates all templates/*.eld files against the data format that
;; `tempel--file-read' and `tempel--file-prepare' (tempel.el) expect:
;;
;;   - the file contents, wrapped in one pair of parentheses, must be
;;     readable as a single Lisp list
;;   - every element of that list must be a mode symbol, a plist
;;     keyword, or a template list; any other element makes
;;     `tempel--file-prepare' loop forever
;;   - every group of templates must name at least one mode, otherwise
;;     the templates are silently dropped
;;   - every plist keyword must have a value; a dangling keyword
;;     silently disables the templates of its group
;;
;; Usage (from the repository root):
;;
;;   emacs --batch -l scripts/check-templates.el -f check-templates
;;
;; Exits non-zero if any file fails validation.

;;; Code:

(defconst check-templates--dir
  (expand-file-name
   "../templates"
   (file-name-directory
    (cond
     (load-in-progress load-file-name)
     ((and (boundp 'byte-compile-current-file) byte-compile-current-file)
      byte-compile-current-file)
     (:else (buffer-file-name))))))

(defun check-templates--validate (file)
  "Validate template file FILE. Return a list of error strings."
  (let ((data
         (condition-case err
             (with-temp-buffer
               (insert "(\n")
               (insert-file-contents file)
               (goto-char (point-max))
               (insert "\n)")
               (goto-char (point-min))
               (read (current-buffer)))
           (error (list (format "unreadable Lisp data: %s"
                                (error-message-string err)))))))
    (cond
     ((null data)
      (list "file contains no templates"))
     ((not (listp data))
      (list "top-level form is not a list"))
     (t
      (let (errors)
        (while data
          (let ((modes nil) (saw-plist nil) (saw-template nil))
            (while (and (car data) (symbolp (car data)) (not (keywordp (car data))))
              (push (pop data) modes))
            (while (keywordp (car data))
              (setq saw-plist t)
              (unless (cadr data)
                (push (format "dangling keyword %S (missing value)" (car data))
                      errors))
              (setq data (cddr data)))
            (while (consp (car data))
              (setq saw-template t)
              (pop data))
            (cond
             ((and (null modes) (not saw-plist) (not saw-template) (consp data))
              (push (format "unexpected element %S (must be a mode symbol, keyword, or template list)"
                            (car data))
                    errors)
              (pop data))
             ((and (null modes) (or saw-plist saw-template))
              (push "template group without mode (templates are silently dropped)"
                    errors))
             (t nil))))
        (nreverse errors))))))

(defun check-templates ()
  "Validate all templates/*.eld files. Exit non-zero if any fail."
  (interactive)
  (unless (directory-file-name check-templates--dir)
    (user-error "templates directory not found: %s" check-templates--dir))
  (let ((failures 0) (checked 0))
    (dolist (file (sort (directory-files check-templates--dir t "\\.eld$")
                        #'string<))
      (setq checked (1+ checked))
      (let ((errors (check-templates--validate file)))
        (if errors
            (progn
              (dolist (err errors)
                (message "FAIL %s: %s" (file-relative-name file) err))
              (setq failures (1+ failures)))
          (message "ok   %s" (file-relative-name file)))))
    (message "%d file(s) checked, %d failure(s)" checked failures)
    (when (and (not (zerop failures)) (not interactive-mode-p))
      (kill-emacs 1))))

(provide 'check-templates)
;;; check-templates.el ends here
