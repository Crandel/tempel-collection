sh-base-mode

(! & "#!/usr/bin/env bash" n q)

(if "if [ " p " ]" n "  then " p n "fi" q)

(ife "if [ " p " ]" n "  then " p n "else" p n "fi" q)

(cs "case " p " in" n> p " )" n> p n> ";;" n> q n "esac")

(fr "for " p " in " p n "do" n> q n "done")
