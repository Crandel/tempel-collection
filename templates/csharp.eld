csharp-mode csharp-ts-mode

(usg "using " q ";")
(usgsys "using System;")
(usgsysns "using System." q ";")

(smry "/// <summary>" n> "/// " q n> "/// </summary>")
(prmdoc "/// <param name=\"" (p "name") "\">" q "</param>")
(retdoc "/// <returns>" q "</returns>")
(excdoc "/// <exception cref=\"" (p "Exception") "\">" q
               "</exception>")

(flddoc "/// <summary>" n> "/// " (p "Description") n> "/// </summary>" n
       "private " (p "Type") " " (p "name") ";")

(prpback
 (p "Property name: " name noinsert)
 "private " (p "Type" type) " "
 (if (string= name "")
     ""
   (concat "_" (downcase (substring name 0 1)) (substring name 1))) ";" n n
 "public " (s type) " " name " {" n>
 "get { return this."
 (if (string= name "")
     ""
   (concat "_" (downcase (substring name 0 1)) (substring name 1)))
 "; }" n>
 "set { this."
 (if (string= name "")
     ""
   (concat "_" (downcase (substring name 0 1)) (substring name 1)))
 " = value; }" n "}" >)

(prpbackdoc
 (p "Property name: " name noinsert)
 "/// <summary>" n> "/// " (p "Description") n> "/// </summary>" n
 "private " (p "Type" type) " "
 (if (string= name "")
     ""
   (concat "_" (downcase (substring name 0 1)) (substring name 1))) ";" n n
 "/// <summary>" n> "/// " (p "Description") n> "/// </summary>" n
 "/// <value><c>" (s type) "</c></value>" n
 "public " (s type) " " name " {" n>
 "get { return this."
 (if (string= name "")
     ""
   (concat "_" (downcase (substring name 0 1)) (substring name 1)))
 "; }" n>
 "set { this."
 (if (string= name "")
     ""
   (concat "_" (downcase (substring name 0 1)) (substring name 1)))
 " = value; }" n "}" >)

(prpdoc "/// <summary>" n> "/// " (p "Description") n> "/// </summary>" n
      (p "public") " " (p "Type") " " (p "Name") n "{" > n>
      "get { return this." (p "field" field) "; }" n>
      "set { this." (s field) " = value; }" n "}" >)

(mthddoc "/// <summary>" n> "/// " (p "Description") n> "/// </summary>" n
        (p "public") " " (p "void") " " (p "MethodName")
        "(" (p "args") ")" n "{" > n> q n "}" >)

(cls "public class " (p "Name" name) n "{" > n>
       "public " (s name) "(" (p "args") ")" n "{" > n> p n "}" > n n>
       "~" (s name) "()" n "{" > n> q n "}" > n "}" >)
