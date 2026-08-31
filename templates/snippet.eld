snippet-mode

(sniphdr "# name: " (p "name") n "# key: " (p "trigger") n
      "# contributor: " (p (user-full-name)) n "# --" n q)
(mir "${" (p "n") ":$(" q ")}")
(fld "${" (p "n") ":" (p "default") "$(" q ")}")
