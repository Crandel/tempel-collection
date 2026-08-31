dix-mode

(sec "<section id=\"" (p "main") "\" type=\""
         (p (completing-read "Type: " '("standard" "inconditional"
                                      "postblank" "preblank")))
         "\">" n> q n "</section>" >)
(tgprm "<par n=\"" q "\"/>")
(ent "<e lm=\"" (p "lemma" lemma) "\"> <i>" (s lemma)
       "</i> <par n=\"" (p "paradigm") "\"/></e>")
(withprm "<with-param pos=\"" q "\"/>")
(whn "<when>" q "</when>")
(tglit "<lit v=\"" q "\"/>")
(lt "<let>" q "</let>")
(clp "<clip pos=\"" (p "position") "\" side=\"" (p "tl")
      "\" part=\"" q "\"/>")
(chs "<choose><when>" n> "<test><equal>" q "</equal></test>" n
        "</when></choose>" >)
