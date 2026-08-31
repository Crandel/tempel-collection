makefile-bsdmake-mode

(phny ".PHONY: " q)
(ech "@echo " (p "\"message to output\""))
(tgtall "all: " (p "targets") n n q n n "clean:" n> (p "clean actions"))
(ifc "@if [ " (p "cond") " ]" n> "then " q n "fi")
(vexp "$(" (p "VAR") ")" q)
