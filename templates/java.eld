java-mode

(pkg "package " q ";")
(imp "import " q ";")

(pl "System.out.println(\"" q "\");")

(class "public class " p " {" n> q n "}")
(main "public static void main(String[] args) {" n> q n> "}")

(if "if (" p ") {" n> q n> "}")
(elif "else if (" p ") {" n> q n> "}")
(else "else {" n> q n> "}")

(for "for (" p ") {" n> q n> "}")
