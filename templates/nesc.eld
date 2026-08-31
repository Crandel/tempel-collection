nesc-mode

(usgiface "uses interface " (p "Interface") " as " (p "alias") ";" q)
(mod "module " (p "Module") " {" n> "uses interface "
        (p "Packet") ";" n> q n "}" >)
(dbg "dbg(\"" (p "Module") "\", \"" q "\");")
(dbgargs "dbg(\"" (p "Module") "\", \"" (p "message") "\", " q ");")
