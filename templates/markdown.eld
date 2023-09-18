markdown-mode

(gitcollapse & "## " (p "Heading") n n "<details>" n n
             "<summary>" (p "Sub Heading")  "</summary>" n n
             (r "Insert Link or comments") n n "</details>")
(bolditalics "***" p "***")
(srcblock (call-interactively #'markdown-insert-gfm-code-block))
(src "'" p "'")
(unorderlist & "- " (p "First") n> "- " (p "Second") n> "- " (p "Third"))
(orderlist & "1. " (p "First") n> "2. " (p "Second") n> "3. " (p "Third"))
(insertimage (call-interactively #'markdown-insert-image))
(insertlink (call-interactively #'markdown-insert-link))
(hugotitle & "+++" n "title = " (p "title") n "date = " (format-time-string "%Y-%m-%d") n "tags = [ " (p "tag1, tag2 ") "]" n "draft = false" n "+++")
(h1 & "# " p " #")
(h2 & "## " p " ##")
(h3 & "### " p " ###")
(h4 & "#### " p " ####")
(inserttable (call-interactively #'markdown-insert-table))
