reason-mode

(cmp "module " (p "Component") " = {" n>
           "[@react.component]" n>
           "let make = (" (p "parameters") ") => {" n> q n "};" > n "};" >)
(fr "for (" (p "i") " in " (p "iFirst") " to " (p "iLast") ") {" n>
     q n "};" >)
(fn "(" (p "parameters") ") => " q)
(fntr "module " (p "Functor") " = (" (p "Module") ": "
         (p "ModuleType") ") => {" n> q n "};" >)
(lt "let " (p "var") " = " (p "e") ";" n q)
(arm "| " (p "Case") " => " q)
(mod "module " (p "M") " = {" n> q n "};" >)
(swch "switch (" (p "to_match") ") {" n
        "| " (p "matching") " => " q n "}")
(wh "while (" (p "cond") ") {" n> q n "};" >)
