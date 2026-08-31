gdscript-mode

(cls "class " (p "class") ":" n> q)
(clsname "class_name " (p "Item") " = " (p "\"res://icons/item.png\""))
(cnst "const " (p "name") " = " q)
(enm "enum " p " {" p "}")
(fr "for " (p "var") " in " (p "collection") ":" n> (p "pass") q)
(fn "func " (p "func_name") " (" (p "param") "):" n> (p "pass") q)
(ifc "if " (p "condition") ":" n> (p "pass") q)
(ife "if " (p "condition") ":" n> (p "pass") n "else:" n> (p "pass"))
(mtch "match " (p "expression") ":" n>
       (p "pattern") ":" n> (p "pass"))
(vrready "onready var " (p "name") " = " q)
(prn "print(" q ")")
(ret "return " q)
(vrstget "var " (p "variable") " = " (p "value") " setget "
     (p "setterfunc") ", " (p "getterfunc"))
(fnstat "static func " (p "func_name") " (" (p "param") "):" n>
    (p "pass") q)
(vr "var " (p "name") " = " q)
(wh "while " (p "True") ":" n> (p "pass") q)
