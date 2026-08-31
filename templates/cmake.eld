cmake-mode cmake-ts-mode

(addexe "add_executable(" (p nil target) " " (p "main.cpp") ")" n
     "target_link_libraries(" (s target) " " p ")")
(addlib "add_library(" (p nil target) " " (p "class.cpp") ")" n
     "target_link_libraries(" (s target) " " p ")")
(minver "cmake_minimum_required(VERSION " (p "2.6") ")")
(fr "foreach(" (p "var" var) " ${" (p "array") "})" n> p n
     "endforeach(" (s var) ")" q)
(fn "function(" (p "name" name) ")" n> p n
     "endfunction(" (s name) ")" q)
(inc "include(" q ")")
(mcr "macro(" (p "name" name) (p " args") ")" n> p n
       "endmacro(" (s name) ")" q)
(msg "message(" (p "STATUS ") "\"" q "\")")
(opt "option(" (p "OPT") " \"" (p "docstring") "\" " (p "value") ")")
(proj "project(" q ")")
(st "set(" (p "var") " " (p "value") ")")

(ifc "if(" (p "condition" cond) ")" n> q n "endif(" (s cond) ")" >)
(ife "if(" (p "condition" cond) ")" n> p n "else()" > n> q n
        "endif(" (s cond) ")" >)
