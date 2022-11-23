;;; tempel-collections.el --- Collection templates for tempel

;; Copyright (C) 2022 Vitalii Drevenchuk

;; Author: Vitalii Drevenchuk <cradlemann@gmail.com>
;; Keywords: tempel
;; Version: 1.0.0
;; Package-Requires: ((tempel "20221016.1017"))
;; Homepage: https://github.com/Crandel/tempel-collections

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
;; This package adds support for templates using tempel.  It will add templates from
;; template directory to tempel-path.
;; Based on mpenet/tempel-closure project autored by Max Penet <mpenetr@s-exp.com>

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
