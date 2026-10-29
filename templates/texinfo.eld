texinfo-mode

;; taken from https://github.com/minad/tempel/blob/5b09f612cfd805dba5e90bf06580583cab045499/README.org#template-file-format (GPL-3.0 license)
(dfnmcr "@defmac " p n> r> "@end defmac")
(dfnfn "@defun " p n> r> "@end defun")
(dfnvr "@defvar " p n> r> "@end defvar")
(exmpl "@example " p n> r> "@end example")
(srclisp "@lisp " p n> r> "@end lisp")
(lstbullet "@itemize @bullet{}" n> r> "@end itemize")
(tgcode "@code{" p "}")
(vr "@var{" p "}")
