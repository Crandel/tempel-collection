texinfo-mode

;; taken from https://github.com/minad/tempel/blob/5b09f612cfd805dba5e90bf06580583cab045499/README.org#template-file-format (GPL-3.0 license)
(defmac "@defmac " p n> r> "@end defmac")
(defun "@defun " p n> r> "@end defun")
(defvar "@defvar " p n> r> "@end defvar")
(example "@example " p n> r> "@end example")
(lisp "@lisp " p n> r> "@end lisp")
(bullet "@itemize @bullet{}" n> r> "@end itemize")
(code "@code{" p "}")
(var "@var{" p "}")
