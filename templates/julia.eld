julia-mode julia-ts-mode

(usg "using " (p "Package") q)
(typprim "primitive type " (p "Type") " <: " (p "Supertype") " "
       (p "bits") " end" q)
(typabst "abstract type " (p "Type") " <: " (p "Supertype") " end" q)
(fr "for " (p "i") " "
     (p (completing-read "Iteration: " '("in" "="))) " " (p "1:n") n>
     q n "end" >)
(tr "try" n> p n "catch " (p "error") > n> q n "end" >)
(trfin "try" n> p n "catch " (p "error") > n> p n "finally" > n>
             q n "end" >)
