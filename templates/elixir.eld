elixir-mode elixir-ts-mode

(fn "def " (p "name") "(" (p "args") ") do" n> q n "end" >)
(fnguard "def " (p "name") "(" (p "args") ") when " (p "guard")
          " do" n> q n "end" >)
(fnone "def " (p "name") "(" (p "args") "), do: " q)
(fnoneguard "def " (p "name") "(" (p "args") ") when " (p "guard")
             ", do: " q)
(fr "for " (p "x") " <- " (p "enum") " do" n> q n "end" >)
