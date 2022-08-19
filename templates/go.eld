go-mode

(pr "fmt.Printf(\"" p "\\n\\n%#v\\n\", " q ")")
(pl "fmt.Println(" q ")")

(db "Debug.Printf(\"" p "\\n\\n\\n%#v\\n\", " q ")")
(dl "Debug.Println(" q ")")

(lf "log.Printf(\"%#v\\n\", " q ")")
(ln "log.Println(" q ")")

(str "type " p " struct {" n> q n> "}")

(inf "type " p " interface {" n> q n> "}")

(cnt "const" p " = " q )

(const "const(" n> p " = " q n> ")")

(main "func main() {" n> q n> "}")

(map "map[" p "]" q)

(for "for " p "{" n> q n> "}")

(range "for " p ", "p " := range " p " {" n> q n> "}")
