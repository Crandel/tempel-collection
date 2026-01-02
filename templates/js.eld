js-base-mode typescript-ts-base-mode

(if "if (" p ") {" n> q n "}" >)
(el "if (" p ") {" n> p n "} else { " > n> q n "}" >)
(elif "else if (" p ") {" n> q n "}" >)
(else "else {" n> q n "}" >)
(cop "( " p ") ? " p " : " q";")

(switch "switch (" p ") {" n> "case " p ":" n> p n> "default:" n> q n "}" >)
(case "case " p ":" n> q)

(while "while (" p ") {" n> q n "}" >)
(dowhile "do {" n> p n> "} while (" q ");")

(for "for (" p "; " p "; " p ") {" n> q n "}" >)
(fin "for (" p " in " p ") {" n> q n "}" >)
(fof "for (" p " of " p ") {" n> q n "}" >)

(func "function " p "(" p ") {" n> q n "}" >)
(fexp "let " p " = function(" p ") {" n> q n "};" >)

(imp "import {" p "} from \"" q "\";")
(impas "import {" p " as " p "} from \"" q "\";")
