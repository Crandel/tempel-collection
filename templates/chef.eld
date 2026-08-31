chef-mode

(fileres "file \"" (p "name") "\" do" n>
      "path \"" (p "path") "\"" n>
      "backup " (p "5") n>
      "owner \"" (p "root") "\"" n>
      "group \"" (p "root") "\"" n>
      "mode \"" (p "0644") "\"" n>
      "content \"" (p "content") "\"" n>
      "action :" (p "create") n "end" >)
