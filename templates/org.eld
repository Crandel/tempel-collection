org-mode


(ttl      & "#+title: " p n "#+author: " p n "#+language: " p n n)
(nm       & "#+name: " p n)
(lnk      & "[[" p "][" p "]]")
(bgn      & "#+begin_" (s name) n r n "#+end_" name)
(exmpl    & "#+begin_example" n> r> n> "#+end_example")
(cntr     & "#+begin_center" n> r> n> "#+end_center")
(cmm     & "#+begin_comment" n> r> n> "#+end_comment")
(mrginnte & "#+begin_marginnote" n> r> n "#+end_marginnote")
(qt       & "#+begin_quote" n> r> n> "#+end_quote")
(sdnt     & "#+begin_sidenote" n> r> n "#+end_sidenote")
(src      & "#+begin_src " p n r n "#+end_src"
 :post (org-edit-src-code))
(rst      & "#+begin_src restclient" p n r n "#+end_src"
 :post (org-edit-src-code))
(elsp     & "#+begin_src emacs-lisp" n r n "#+end_src"
 :post (org-edit-src-code))
(gnplt    & "#+begin_src gnuplot :var data=" (p "table") " :file " (p "plot.png") n r n "#+end_src"
 :post (org-edit-src-code))
(py_   & "#+begin_src python" n r n "#+end_src"
 :post (org-edit-src-code))
(py_vl & "#+begin_src python :results value" n r n "#+end_src"
 :post (org-edit-src-code))
(py_otpt & "#+begin_src python :results output" n r n "#+end_src"
 :post (org-edit-src-code))
(vrs & "#+begin_verse" n> r> n> "#+end_verse")
(rdnly ":tangle yes :tangle-mode (identity #o444) :mkdirp yes" n)
(oxhugo & ":PROPERTIES:"  n ":EXPORT_FILE_NAME: " (p "Simple Filename") n ":EXPORT_DATE: "
 (format-time-string "%Y-%m-%d") n ":EXPORT_HUGO_DRAFT: false" n ":END:")
(rdmecollapse  "*** " (p "Heading") n "#+HTML: <details> <summary> " (p "sub-heading")  " </summary>" n
 (r> "link or any comments") n n "#+HTML: </details>" n)

;; taken from https://github.com/minad/tempel/blob/5b09f612cfd805dba5e90bf06580583cab045499/README.org#template-file-format
(cptn & "#+caption: ")
(drwr & ":" p ":" n r ":end:")
(inlsrc "src_" p "{" q "}")

