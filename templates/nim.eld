nim-mode

(arr "array[" (p "length") ", " (p "type") "]" q)
(blk "block " (p "name") ":" n> q)
(cs "case " (p "value") n q)
(fr "for " (p "index") " in " (p "sequence") ":" n> q)
(fn "func " (p "name") "(" (p "arguments") "): "
      (p "return type") " =" n> q)
(ifc "if " (p "expression") ":" n> q)
(imp "import " (p "module"))
(impsrc "from " (p "module") " import " (p "field"))
(dfniter "iterator " (p "name") "(" (p "arguments") "): "
          (p "return type") q)
(mcr "macro " (p "name") "(" (p "arguments") "): "
       (p "return type") " =" n> q)
(mthd "method " (p "name") "(" (p "arguments") "): "
        (p "return type") " =" n> q)
(arm "of " (p "value") ":" n> q)
(prag "{." (p "name") ".}")
(dfnproc "proc " (p "name") "(" (p "arguments") "): "
      (p "return type") " =" n> q)
(typseq "seq[" (p "type") "]" q)
(tmpl "template " (p "name") "(" (p "arguments") "): "
          (p "return type") " =" n> q)
(wh "while " (p "expression") ":" n> q)
