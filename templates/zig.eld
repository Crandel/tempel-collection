zig-mode

(elsifc "else if (" p ") {" n> q n "}" >)
(els "else {" n> q n "}" >)
(fn "fn " (p "name") "(" p ") " (p "!void") " {" n> q n "}" >)
(ifc "if (" p ") {" n> q n "}" >)
(imp "const " (p "name") " = @import(\"" (p "lib") "\");")
(strc "struct {" n> q n "}" >)
(swch "switch (" p ") {" n> p " => " q n "}" >)
(tst "test \"" p "\" {" n> q n "}" >)
(unn "union " (p "(enum)") " {" n> q n "}" >)
