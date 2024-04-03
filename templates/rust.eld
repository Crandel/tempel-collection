rust-mode rust-ts-mode

(if "if " p " {" n> q n "}" > q)

(el "if " p " {" n> p n "} else {" >n> p n "}" > q)

(elif "if " p " {" n> p n "} else if " p " {" >n> p n "}" > q)

(fn "fn " p "(" p ") {" n> p n "}" q)

(fnr "fn " p "(" p ") -> " p " {" n> p n "}" q)

(crt "extern crate " q ";")

(drv & "#[derive(" p ")]" q)

(d "dbg!(" p ")" q)

(lp "loop {" n> q n "}" > q)
