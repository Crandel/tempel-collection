go-mode go-ts-mode

(imp "import " q)
(impn "import (" n> q n ")")

(pr "fmt.Printf(\"\\n" p "\\n%#v\\n\", " q ")")
(pl "fmt.Println(" q ")")

(db "Debug.Printf(\"\\n" p "\\n\\n%#v\\n\", " q ")")
(dl "Debug.Println(" q ")")

(lf "log.Printf(\"\\n%#v\\n\", " q ")")
(ln "log.Println(" q ")")

(stt "type " p " struct {" n> q n "}")

(inf "type " p " interface {" n> q n "}")

(cnt "const " p " = " q )

(cnst "const (" n> p " = " q n ")")

(vr "var " p " " q)

(mp "map[" p "]" q)

(if "if " p " {" n> p n "}" > q)

(el "if " p " {" n> p n "} else {" > n> p n "}" > q)

(elif "if " p " {" n> p n "} else if " > p " {" n> p n "}" > q)

(ifen "if err != nil {" n> q n "}" >)

(ifer "if err != " p " {" n> q n "}" >)

(sel "select {" n> "case " p ":" n> q n "}" >)

(swch "switch " p " {" n> "case " p ":" q n "}" >)

(fr "for " p "{" n> q n "}" >)

(rng "for " p ", " p " := range " p " {" n> q n "}" >)

(fnc "func " p "(" p ") {" n> q n "}" >)

(mn "func main() {" n> q n "}")

(in "func init() {" n> q n "}")

(tst "func Test" p " (t *testing.T) { " n> q n "}")
