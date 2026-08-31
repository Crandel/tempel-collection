nsis-mode

(odir "$OUTDIR")
(idir "$INSTDIR")
(ifc "${If} " (p "condition") n> q n "${ElseIf} " (p "condition") n n
    "${EndIf}" >)
