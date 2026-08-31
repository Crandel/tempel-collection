nxml-mode

(bdy "<body" p ">" n> q n "</body>" >)
(tgbr "<br />")
(dt "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" "
         "\"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">")
(dtstrict
 "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" "
 "\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">")
(dttrans
 "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" "
 "\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">")
(htmform "<form method=\"" p "\" action=\"" p "\">" n> q n "</form>" >)
(anc "<a href=\"" p "\">" p "</a>")
(htm "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\""
      (p "en") "\" lang=\"" (p "en") "\">" n> q n "</html>" >)
(tgimg "<img src=\"" p "\" alt=\"" p "\" />")
(inp "<input type=\"" p "\" name=\"" p "\" value=\"" p "\" />")
(lnk "<link rel=\"" (p "stylesheet") "\" href=\"" (p "url")
      "\" type=\"" (p "text/css") "\" media=\"" (p "screen") "\" />")
(mta "<meta name=\"" (p "generator") "\" content=\"" (p "content") "\" />")
(ancname "<a name=\"" p "\"></a>")
(qt "<blockquote>" n> p n "</blockquote>" >)
(sty "<style type=\"text/css\" media=\"" (p "screen") "\">" n>
       q n "</style>" >)
(tgblk "<" (p "tag" tag) ">" n> p n "</" (s tag) ">" q >)

(tg "<" (p "tag" tag) ">" q "</" (s tag) ">")
(tgself "<" (p "tag") " " q " />")
