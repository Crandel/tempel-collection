lisp-mode

(slt "(" (p "name" name) " :initarg :" (s name) n>
      ":initform (error \":" (s name) " must be specified\")" n>
      ":reader " (s name) "-changed" n>
      ":writer set-" (s name) n>
      ":type " (p "type") n>
      ":allocation "
      (p (completing-read "Allocation: " '(":instance" ":class"))) n>
      ":documentation \"" (p "about slot") "\")" >)
(dfnpkg "(defpackage #:" (p "name") n>
            "(:nicknames #:" (p "nick") ")" n>
            "(:use #:cl #:closer-mop #:" (p "package") ")" n>
            "(:shadow :" (p "symbol") ")" n>
            "(:shadowing-import-from #:" (p "package") " #:" (p "symbol") ")" n>
            "(:export :" q "))" >)
(cls "(defclass " (p "name") " (" (p "inherits") ")" n>
       "((" (p "slot") "))" n>
       "(:documentation \"" (p "doc") "\"))" > q)
