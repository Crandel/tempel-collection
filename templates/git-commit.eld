git-commit-mode

(fxiss "fixes #" (p "100"))
(refiss "references #" (p "100"))
(ctype (p (completing-read
          "Type: "
          '("fix" "hotfix" "add" "update" "change" "clean"
            "disable" "remove" "upgrade" "revert")))
      " " q)
