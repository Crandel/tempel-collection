c-mode c-ts-mode

(mlc "malloc(sizeof(" (p "type") ") * " (p "count") ");" q)
(ccmd "// -*- compile-command: \"" (p "gcc -Wall -o app main.c")
         "\" -*-")

(doxfile "/**" n> "* \\file "
          (file-name-nondirectory (or (buffer-file-name) "file")) n>
          "* \\brief " (p "Summary") n> q n> "*/")
(doxfn "/**" n> "* \\brief " (p "Summary") n> q n>
              "* \\param " (p "parameter") n>
              "* \\return " (p "return value") n> "*/")
