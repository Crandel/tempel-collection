latex-mode LaTeX-mode

;; taken from https://github.com/minad/tempel/blob/5b09f612cfd805dba5e90bf06580583cab045499/README.org#template-file-format
(abst "\\begin{abstract}\n" r> n> "\\end{abstract}")
(algn "\\begin{align}\n" r> n> "\\end{align}")
(algnstar "\\begin{align*}\n" r> n> "\\end{align*}")
(gthr "\\begin{gather}\n" r> n> "\\end{gather}")
(gthrstar "\\begin{gather*}\n" r> n> "\\end{gather*}")
(appx "\\begin{appendix}\n" r> n> "\\end{appendix}")
(bgn "\\begin{" (s env) "}" r> n> "\\end{" (s env) "}")
(ctr "\\begin{center}\n" r> n> "\\end{center}")
(mathdisp "\\begin{displaymath}\n" r> n> "\\end{displaymath}")
(docblk "\\begin{document}\n" r> n> "\\end{document}")
(lstord "\\begin{enumerate}\n\\item " r> n> "\\end{enumerate}")
(eqn "\\begin{equation}" r> n> "\\end{equation}")
(flushl "\\begin{flushleft}" r> n> "\\end{flushleft}")
(flushr "\\begin{flushright}" r> n> "\\end{flushright}")
(frac "\\frac{" p "}{" q "}")
(parfussy "\\begin{fussypar}" r> n> "\\end{fussypar}")
(lstunord "\\begin{itemize}\n\\item " r> n> "\\end{itemize}")
(ltr "\\begin{letter}\n" r> n> "\\end{letter}")
(mathblk "\\begin{math}\n" r> n> "\\end{math}")
(pagemini "\\begin{minipage}[t]{0.5\linewidth}\n" r> n> "\\end{minipage}")
(qtblk "\\begin{quotation}\n" r> n> "\\end{quotation}")
(qt "\\begin{quote}\n" r> n> "\\end{quote}")
(parsloppy "\\begin{sloppypar}\n" r> n> "\\end{sloppypar}")
(idx "\\begin{theindex}\n" r> n> "\\end{theindex}")
(lsttriv "\\begin{trivlist}\n" r> n> "\\end{trivlist}")
(vrb "\\begin{verbatim}\n" r> n> "\\end{verbatim}")
(vrbstar "\\begin{verbatim*}\n" r> n> "\\end{verbatim*}")

(thm "\\begin{thm}[" (p "title") "]" n>
         "\\label{thm:" (p "label") "}" n> q n "\\end{thm}" >)
(lem "\\begin{lem}[" (p "title") "]" n>
       "\\label{lem:" (p "label") "}" n> q n "\\end{lem}" >)
(cor "\\begin{cor}[" (p "title") "]" n>
           "\\label{cor:" (p "label") "}" n> q n "\\end{cor}" >)
(cvcomp "\\cvcomputer{" (p "category") "}{" (p "programs") "}{"
            (p "category") "}{" (p "programs") "}")

(gls "\\newglossaryentry{" (p "AC") "}{name=" (p "Name")
          ", description=" q "}")
(newcmdargs "\\newcommand{\\" (p "name") "}[" (p "0") "]{" q "}")
(gfxopt "\\includegraphics[" (p "options") "]{" q "}")
(frmopt "\\begin{frame}[" (p "options") "]" n>
       "\\frametitle{" (p "title") "}" n> q n "\\end{frame}" >)

(newcmd "\\newcommand{\\" (p "name") "}{" q "}")
(gfx "\\includegraphics{" q "}")
(frm "\\begin{frame}" n> q n "\\end{frame}" >)
