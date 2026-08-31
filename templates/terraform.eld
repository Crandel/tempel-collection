terraform-mode

(vr "variable \"" (p "name") "\" {" n> "default = \"" q "\"" n "}" >)
(gcpsslcert "resource \"google_compute_ssl_certificate\" \"" (p "name")
            "\" {" n> "private_key = file(\"" (p "private-key") "\")" n>
            "certificate = file(\"" q "\")" n "}" >)
