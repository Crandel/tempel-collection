makefile-mode

(tgtall "all:" n> q)

(tgtcln "clean:" n> "rm -r $(" (p "OUTDIR") ")" n q)
