;;; tempel-collection.el --- Collection of templates for Tempel

;; Copyright (C) 2022 Tempel collection contributors

;; Author: Vitalii Drevenchuk <cradlemann@gmail.com>,
;;         Max Penet <mpenetr@s-exp.com>,
;;         Daniel Mendler <mail@daniel-mendler.de>
;; Maintainer: Vitalii Drevenchuk <cradlemann@gmail.com>,
;;             Max Penet <mpenetr@s-exp.com>,
;;             Daniel Mendler <mail@daniel-mendler.de>
;; Keywords: tools
;; Version: 0.2
;; Package-Requires: ((tempel "0.5") (emacs "29.1"))
;; Homepage: https://github.com/Crandel/tempel-collection

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

;; Maps directly to mode names as stored in <mode-name>.eld file, as
;; some ts modes do not have a counterpart non-ts mode in Emacs core,
;; e.g., rust-mode. Do not alias ts modes which have a common parent
;; mode with their non-ts mode. For example, python-ts-mode and
;; python-mode have a common parent, python-base-mode. Thus add python
;; templates to python-base.eld. Note that in the lisp data template file,
;; the alias mode must be enabled, too.
(defvar tempel-collection--aliases
  '((c++-ts-mode . "c++")
    (c-ts-mode . "c")
    (cmake-ts-mode . "cmake")
    (csharp-ts-mode . "csharp")
    (dockerfile-ts-mode . "dockerfile")
    (go-ts-mode . "go")
    (go-mod-ts-mode . "go-mod")
    (java-ts-mode . "java")
    (js-base-mode . "js")
    (typescript-ts-base-mode . "js")
    (json-ts-mode . "json")
    (rust-ts-mode . "rust")
    (toml-ts-mode . "toml")
    (yaml-ts-mode . "yaml")))

(defun tempel-collection--mode-file (mode-name)
  "Get the file name for the templates of MODE-NAME, if it exists."
  (let ((file (format "%s%s.eld" tempel-collection--dir mode-name)))
    (if (file-exists-p file)
        file
      nil)))

;;;###autoload
(defun tempel-collection ()
  "Template loader."
  (let ((mode major-mode))
    (while (and mode (not (memq mode tempel-collection--loaded)))
      (push mode tempel-collection--loaded)
      (let ((file
             (or (tempel-collection--mode-file (downcase (string-remove-suffix "-mode" (symbol-name mode))))
                 (tempel-collection--mode-file (alist-get mode tempel-collection--aliases)))))
        (when file
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
