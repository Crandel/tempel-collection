;;; tempel-collection.el --- Collection templates for tempel

;; Copyright (C) 2022 Vitalii Drevenchuk

;; Author: Vitalii Drevenchuk <cradlemann@gmail.com>
;; Keywords: tools
;; Version: 1.0.0
;; Package-Requires: ((tempel "0.5") (emacs "27.1"))
;; Homepage: https://github.com/Crandel/tempel-collection

;;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This package registers a collection of templates with Tempel.

;;; Code:

(require 'tempel)
(eval-when-compile
  (require 'cl-lib)
  (require 'subr-x))

(defconst tempel-collection--dir
  (expand-file-name
   "templates/"
   (file-name-directory
    (cond
     (load-in-progress load-file-name)
     ((and (boundp 'byte-compile-current-file) byte-compile-current-file)
      byte-compile-current-file)
     (:else (buffer-file-name))))))

(defvar tempel-collection--templates nil)
(defvar tempel-collection--loaded nil)

;;;###autoload
(defun tempel-collection ()
  "Template loader."
  (let ((mode major-mode))
    (while (and mode (not (memq mode tempel-collection--loaded)))
      (push mode tempel-collection--loaded)
      (let ((file (format "%s%s.eld"
                          tempel-collection--dir
                          (string-remove-suffix "-mode" (symbol-name mode)))))
        (when (file-exists-p file)
          (setq tempel-collection--templates
                (nconc (tempel--file-read file)
                       tempel-collection--templates))))
      (setq mode (and (not (eq mode #'fundamental-mode))
                      (or (get mode 'derived-mode-parent)
                          #'fundamental-mode)))))
    ;; TODO code duplication with tempel-path-templates
    (cl-loop for (modes plist . templates) in tempel-collection--templates
             if (tempel--condition-p modes plist)
             append templates))

;;;###autoload
(with-eval-after-load 'tempel
  (add-to-list 'tempel-template-sources 'tempel-collection 'append))

(provide 'tempel-collection)
;;; tempel-collection.el ends here
