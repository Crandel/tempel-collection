makefile-gmake-mode

(mk "$(MAKE) --directory=" (p "$@") n q)
(patsub "$(patsubst " (p "from") "," (p "to") "," (p "src") ")")
(phny ".PHONY: " q)
(sh "$(shell " (p "command") ")" q)
(fnwild "$(wildcard " q ")")

(abs "$(abspath $(" q "))")
(addpfx "$(addprefix $(" (p "dir") ")/,$(" q "))")
(addsfx "$(addsuffix " (p ".suffix") ",$(" q "))")
(fndir "$(dir $(" q "))")
(fnnotdir "$(notdir $(" q "))")
(spc "." (p (completing-read "Special target: "
                                  '("PHONY" "DEFAULT" "PRECIOUS" "SECONDARY"
                                    "SECONDEXPANSION" "DELETE_ON_ERROR")))
         ": " q)
(tmpl "define " (p "PROGRAM" program) "_template" n> q n "endef" n n
          "$(foreach " (p (downcase program) item) ",$(" (s program) "S),"
          "$(eval $(call " (s program) "_template,$(" (s item) "))))")
