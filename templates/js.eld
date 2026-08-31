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

(tr "try {" n> p n "} catch (err) {" > n> q n "}" >)
(trfin "try {" n> p n "} catch (err) {" > n> p n
             "} finally {" > n> q n "}" >)
(ctor "constructor(" (p "args") ") {" n> q n "}" >)
(cls "class " (p "Class") " {" n>
       "constructor(" (p "args") ") {" n> q n "}" > n "}" >)
(clsext "class " (p "Class") " extends " (p "Parent") " {" n>
               "constructor(" (p "args") ") {" n> "super(" p ");" n>
               q n "}" > n "}" >)
(tmout "setTimeout(() => {" n> q n "}, " (p "delayInMs") ")" >)
(impdflt "import " (p "name") " from '" q "'")
(impallas "import * as " (p "alias") " from '" q "'")


(exp "export { " (p "name") " } from '" q "'")
(expas "export { " (p "name") " as " (p "alias") " } from '" q "'")
(bndmthd "this." (p "method" method) " = this." (s method) ".bind(this)")
