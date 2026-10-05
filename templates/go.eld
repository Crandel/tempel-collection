go-mode go-ts-mode

(imp "import " q)
(implst "import (" n> q n ")")

(prnfmt "fmt.Printf(\"\\n" p "\\n%#v\\n\", " q ")")
(prnln "fmt.Println(" q ")")

(dbgfmt "Debug.Printf(\"\\n" p "\\n\\n%#v\\n\", " q ")")
(dbgln "Debug.Println(" q ")")

(lgfmt "log.Printf(\"\\n%#v\\n\", " q ")")
(lgln "log.Println(" q ")")

(strc "type " p " struct {" n> q n "}")

(iface "type " p " interface {" n> q n "}")

(cnst "const " p " = " q )

(cnstblk "const (" n> p " = " q n ")")

(vr "var " p " " q)

(mp "map[" p "]" q)

(ifc "if " p " {" n> p n "}" > q)

(ife "if " p " {" n> p n "} else {" > n> p n "}" > q)

(elsifc "if " p " {" n> p n "} else if " > p " {" n> p n "}" > q)

(ifcerrnil "if err != nil {" n> q n "}" >)

(ifcerr "if err != " p " {" n> q n "}" >)

(sel "select {" n> "case " p ":" n> q n "}" >)

(swch "switch " p " {" n> "case " p ":" q n "}" >)

(fr "for " p "{" n> q n "}" >)

(frrng "for " p ", " p " := range " p " {" n> q n "}" >)

(fn "func " p "(" p ") {" n> q n "}" >)

(mn "func main() {" n> q n "}")

(fninit "func init() {" n> q n "}")

(tst "func Test" p " (t *testing.T) { " n> q n "}")

(vrblk "var (" n> (p "name") " " q n ")" >)

(mthddoc "// " (p "name" name) " " (p "description") n
        "func (" (p "recv") ") " (s name) "(" (p "args") ") "
        (p "result") " {" n> q n "}" >)
