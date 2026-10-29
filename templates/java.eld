java-mode

(pkg "package " q ";")
(imp "import " q ";")

(prnln "System.out.println(\"" q "\");")

(cls "public class " p " {" n> q n "}")
(mn "public static void main(String[] args) {" n> q n> "}")

(ifc "if (" p ") {" n> q n> "}")
(elsifc "else if (" p ") {" n> q n> "}")
(els "else {" n> q n> "}")

(fr "for (" p ") {" n> q n> "}")
