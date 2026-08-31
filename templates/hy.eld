hy-mode

(fn "(defn " (p "function-name") " [" (p "arg") "]" n> q ")" >)
(mcr "(defmacro " (p "macro-name") " [" (p "arg") "]" n>
      (p "`(") q "))" >)
(doblk "(do " q ")")
(fr "(for [" (p "item items") "] " q ")")
(ifc "(if " (p "condition") n> (p "result-true") n>
    (p "result-false") ")" >)
(ifcnot "(if-not " (p "condition") n> (p "result-false") n>
     (p "result-true") ")" >)
(imp "(import [" (p "module-name") " [" (p "exposing") "]])")
(lt "(let [" (p "arg") "]" n> q ")" >)
(mn "(defmain [&rest " (p "args") "]" n> q ")" >)
(reqmod "(req [" (p "module-name") " [" (p "exposing") "]])")
(stvr "(setv " q ")")
(unl "(unless " (p "condition") n> q ")" >)
(whn "(when " (p "condition") n> q ")" >)
