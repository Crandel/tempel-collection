haskell-mode

(typdata "data " (p "Type") " = " p)
(cmt "{-" n> q n "-}" >)
(errfixme "(error \"FIXME: " q "\")")
(fn (p "function-name" name) " :: " (p "type") n
     (s name) " " (p "arguments") " " q)
(fnstub (p "function-name" name) " :: " (p "type") n
      (s name) " = " q "error \"Not implemented: " (s name) "\"")
(mn "main :: IO ()" n "main = do " q)
(mod "module " (p "Module") " where" n q)
(cls "class " (p "Name") " where" n> q)
(prag "{-# " (p "PRAGMA") " #-}")
(prn "print " q)
