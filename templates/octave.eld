octave-mode

(fr "for " (p "var") " = " (p "expr") n> q n "endfor" >)
(fn "function " (p "return_val") " = " (p "fname") "(" (p "args") ")"
     n> q n "endfunction" >)

(ife "if " (p "condition") n> p n "else" > n> q n "endif" >)
