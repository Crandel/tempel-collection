php-mode php-ts-mode

(fn (p "public ") "function " (p "name") "(" (p "$arg, ...") ")" n
          "{" > n> q n "}" >)
(fntyp (p "public ") "function " (p "name") "(" (p "$arg, ...")
               "): " (p "type") n "{" > n> q n "}" >)
