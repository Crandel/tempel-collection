markdown-mode

(collapsegit & "## " (p "Heading") n n "<details>" n n
             "<summary>" (p "Sub Heading")  "</summary>" n n
             (r "Insert Link or comments") n n "</details>")
(boldital "***" p "***")
(srcblk (call-interactively #'markdown-insert-gfm-code-block))
(src "'" p "'")
(lstunord & "- " (p "First") n> "- " (p "Second") n> "- " (p "Third"))
(lstord & "1. " (p "First") n> "2. " (p "Second") n> "3. " (p "Third"))
(addimg (call-interactively #'markdown-insert-image))
(addlnk (call-interactively #'markdown-insert-link))
(ttlhugo & "+++" n "title = " (p "title") n "date = " (format-time-string "%Y-%m-%d") n "tags = [ " (p "tag1, tag2 ") "]" n "draft = false" n "+++")
(h1 & "# " p " #")
(h2 & "## " p " ##")
(h3 & "### " p " ###")
(h4 & "#### " p " ####")
(addtbl (call-interactively #'markdown-insert-table))

(hrdash "----------" n q)
(hrstar "*******" n q)
(h1setext (p "Header 1" title) n (make-string (string-width title) ?=) n q)

(h2setext (p "Header 2" title) n (make-string (string-width title) ?-) n q)
