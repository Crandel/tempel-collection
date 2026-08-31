makefile-gmake-mode

(mk "$(MAKE) --directory=" (p "$@") n q)
(patsub "$(patsubst " (p "from") "," (p "to") "," (p "src") ")")
(phny ".PHONY: " q)
(sh "$(shell " (p "command") ")" q)
(fnwild "$(wildcard " q ")")
