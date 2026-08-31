tuareg-mode

(ast "assert " q ";;")
(cmt "(* " q " *)")
(fr "for " (p "cond") " do" n> q n "done" >)
(fn "fun " (p "args") " -> " q)
(arm "| " (p "match") " -> " q)
(lt "let " (p "var") " " q)
(lc "[? " p " | " q " ?]")
(mn "let main =" n> q)
(mtch "match " (p "to_match") " with" n>
       "| " (p "matching") " -> " q)
(mod "module " (p "A") " =" n>
     "struct" n> (p "type t = { name : string; phone : string }") n>
     q n "end;;" >)
(opnmod "open " (p "Module"))
(prn "Printf.printf \"" (p "string") "\" " (p "vals") ";;")
(fnrecur "let rec " (p "fun") " " (p "args") " =" n> q)
(vl "val " (p "fun") " : " q)
(wh "while " (p "cond") " do" n> q n "done" >)
