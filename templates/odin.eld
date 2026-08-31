odin-mode

(whnels "when " (p "condition") " {" n> p n "} else {" > n> q n "}" >)
(ife "if " (p "init; ") (p "condition") " {" n> p n "} else {" > n> q n "}" >)
(frdirv (p "#directive ") "for " (p "condition") " {" n> q n "}" >)
