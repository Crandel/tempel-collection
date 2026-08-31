udev-mode

(envmtch "ENV{" p "}" q)
(gt "GOTO=\"" (p nil label) "\"" n q n n "LABEL=\"" (s label) "\"")
(krnnot "KERNEL!=\"" q "\"")
(actadd "ACTION==\"add\", " q)
(envsub "$env{" p "} " q)
(runcmd "RUN+=\"" q "\"")
