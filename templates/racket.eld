racket-mode

(cs "(case " (p "expression") " [" (p "datum") " " q "])")
(cslmd "(case-lambda [" (p "arguments") " " q "])")
(cnd "(cond [" (p "predicate") " " q "])")
(dfnsynrule "(define-syntax-rule (" (p "id") " " (p "pattern")
                    ") " q ")")
(doloop "(do ([" (p "name") " " (p "init") " " (p "step") "]" p ")" n>
    "(" (p "stop-predicate") " " (p "finish") ")" n> q ")" >)
(fr "(for" p " (" (p "for-clause") ") " q ")")
(lt "(let" p " ([" (p "name") " " (p "expression") "]" p ") " q ")")
(mtch "(match " (p "expression") " [" (p "clause") " " q "])")
(mod "(module " (p "id") " " (p "module-path") n> q ")" >)
(modplus "(module+ " (p "id") n> q ")" >)
(modstar "(module* " (p "id") " " (p "module-path") n> q ")" >)
(synrule "(syntax-rules (" (p "literal-id") p ")" n>
              "[(" (p "id") " " (p "pattern") ") " (p "template") "]" p
              ")" >)

(whn "(when (" (p "predicate") ") " q ")")
(unl "(unless (" (p "predicate") ") " q ")")
(lmd "(lambda (" (p "arguments") ") " q ")")
(ifc "(if (" (p "predicate") ")" n> q ")" >)
(dfn "(define (" (p "name") " " (p "arguments") ") " q ")")
