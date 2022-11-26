;;; tempel-collection.el --- Collection templates for tempel

;; Copyright (C) 2022 Vitalii Drevenchuk

;; Author: Vitalii Drevenchuk <cradlemann@gmail.com>
;; Keywords: tools
;; Version: 1.0.0
;; Package-Requires: ((tempel "0.5"))
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
;; This package adds support for templates using tempel. It will add templates from
;; template directory to tempel-path.
;; Based on https://github.com/mpenet/tempel-clojure authored by Max Penet mpenet@s-exp.com


;;; Code:
(defconst tempel-collection-templates-dir
  (file-name-directory
   (cond
    (load-in-progress load-file-name)
    ((and (boundp 'byte-compile-current-file) byte-compile-current-file)
     byte-compile-current-file)
    (:else (buffer-file-name)))))

;;;###autoload
(defun tempel-collection-initialize ()
  "Add tempel-collection template dir to \"tempel-path\"."
  (let ((template-dir (expand-file-name "templates/*.eld"
                                        tempel-collection-templates-dir)))
    (when (boundp 'tempel-path)
      (cond
       ((stringp tempel-path)
        (setq tempel-path (list tempel-path template-dir)))
       ((listp tempel-path)
        (add-to-list 'tempel-path template-dir t))))))


(require 'tempel)
(tempel-collection-initialize)

(provide 'tempel-collection)
;;; tempel-collection.el ends here
