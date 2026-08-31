css-base-mode

(bgclr "background-color: #" (p "DDD") ";")
(bgimg "background-image: url(" p ");")
(bor "border: " (p "1px") " " (p "solid") " #" (p "999") ";")
(clr "clear: " p ";")
(dispblk "display: block;")
(dispinl "display: inline;")
(dispnone "display: none;")
(fontfam "font-family: " p ";")
(fontsz "font-size: " (p "12px") ";")
(marb "margin-bottom: " p ";")
(marl "margin-left: " p ";")
(mar1 "margin: " p ";")
(mar4 "margin: " (p "top") " " (p "right") " "
            (p "bottom") " " (p "left") ";")
(marr "margin-right: " p ";")
(mart "margin-top: " p ";")
(padb "padding-bottom: " p ";")
(padl "padding-left: " p ";")
(pad1 "padding: " p ";")
(pad4 "padding: " (p "top") " " (p "right") " "
             (p "bottom") " " (p "left") ";")
(padr "padding-right: " p ";")
(padt "padding-top: " p ";")
(vnd (p nil property) ": " (p nil value) ";" n>
    "-webkit-" (s property) ": " (s value) ";" n>
    "-moz-" (s property) ": " (s value) ";" n>
    "-ms-" (s property) ": " (s value) ";" n>
    "-o-" (s property) ": " (s value) ";")
