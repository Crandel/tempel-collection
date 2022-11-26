go-mode

(imp "import " q)
(impn "import (" n> q n ")")

(pr "fmt.Printf(\"\\n" p "\\n%#v\\n\", " q ")")
(pl "fmt.Println(" q ")")

(db "Debug.Printf(\"\\n" p "\\n\\n%#v\\n\", " q ")")
(dl "Debug.Println(" q ")")

(lf "log.Printf(\"\\n%#v\\n\", " q ")")
(ln "log.Println(" q ")")

(str "type " p " struct {" n> q n "}")

(inf "type " p " interface {" n> q n "}")

(cnt "const " p " = " q )

(const "const (" n> p " = " q n ")")

(var "var " p " " q)

(map "map[" p "]" q)

(if "if " p " {" n> q n> "}")

(else "if " p " {" n> p n> "} else {" n> q n> "}")

(elif "if " p " {" n> p n> "} else if " p " {" n> q n> "}")

(ifen "if err != nil {" n> q n> "}")

(ifer "if err != " p " {" n> q n> "}")

(sel "select {" n> "case " p ":" n> q n> "}")

(swch "switch " p " {" n> "case " p ":" q n> "}")

(for "for " p "{" n> q n> "}")

(range "for " p ", " p " := range " p " {" n> q n> "}")

(fnc "func " p "(" p ") {" n> q n "}")

(main "func main() {" n> q n "}")

(init "func init() {" n> q n "}")

(test "func Test" p " (t *testing.T) { " n> q n "}")
