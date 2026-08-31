rst-mode

;; taken from https://github.com/minad/tempel/blob/5b09f612cfd805dba5e90bf06580583cab045499/README.org#template-file-format (GPL-3.0 license)
(title (make-string (length title) ?=) n (p "Title: " title) n (make-string (length title) ?=) n)

(gvz ".. graphviz::" n n> q)
(grf ".. graph:: " (p "name") n n> q)
(dgr ".. digraph:: " (p "name") n n> q)
(automod ".. automodule:: " q)
(autofn ".. autofunction:: " q)
(autocls ".. autoclass:: " (p "class") n> ":members: " q)
