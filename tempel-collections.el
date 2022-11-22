;;; tempel-collections.el --- Collection templates for tempel

;;; Commentary:
;; This package adds support for templates using tempel.  It will add templates from
;; template directory to tempel-path.

;;; Code:
(defconst tempel-collections-templates-dir
  (file-name-directory
   (cond
    (load-in-progress load-file-name)
    ((and (boundp 'byte-compile-current-file) byte-compile-current-file)
     byte-compile-current-file)
    (:else (buffer-file-name)))))

;;;###autoload
(defun tempel-collections-initialize ()
  "Add tempel-collections template dir to \"tempel-path\"."
  (let ((template-dir (expand-file-name "templates/*.eld"
                                        tempel-collections-templates-dir)))
    (when (boundp 'tempel-path)
      (cond
       ((stringp tempel-path)
        (setq tempel-path (list tempel-path template-dir)))
       ((listp tempel-path)
        (add-to-list 'tempel-path template-dir t))))))


;;;###autoload
(eval-after-load 'tempel
  '(tempel-collections-initialize))

(require 'tempel)

(provide 'tempel-collections)
;;; tempel-collections.el ends here
