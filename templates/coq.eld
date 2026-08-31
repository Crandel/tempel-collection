coq-mode

(fixpwith "Fixpoint " (p "first") " (" (p "x") " : " (p "type") ") : "
       (p "result") " :=" n> p n "with " (p "second") " (" (p "y")
       " : " (p "type") ") : " (p "result") " :=" n> q ".")
(reqimp "Require Import " q ".")
