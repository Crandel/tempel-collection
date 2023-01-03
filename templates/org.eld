org-mode

(ttl "#+title: " p n "#+author: " p n "#+language: " p n n)
(qt "#+begin_quote" n> r> n> "#+end_quote")
(exmpl "#+begin_example" n> r> n> "#+end_example")
(cntr "#+begin_center" n> r> n> "#+end_center")
(comm "#+begin_comment" n> r> n> "#+end_comment")
(vrs "#+begin_verse" n> r> n> "#+end_verse")
(src "#+begin_src " p n> r> n> "#+end_src" :post (org-edit-src-code))
(rst "#+begin_src restclient" p n> r> n> "#+end_src" :post (org-edit-src-code))
(elsp "#+begin_src emacs-lisp" n> r> n "#+end_src" :post (org-edit-src-code))
