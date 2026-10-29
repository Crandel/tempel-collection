rust-mode rust-ts-mode

(ifc "if " p " {" n> q n "}" > q)

(ife "if " p " {" n> p n "} else {" >n> p n "}" > q)

(elsifc "if " p " {" n> p n "} else if " p " {" >n> p n "}" > q)

(fn "fn " p "(" p ") {" n> p n "}" q)

(fnret "fn " p "(" p ") -> " p " {" n> p n "}" q)

(crt "extern crate " q ";")

(drv & "#[derive(" p ")]" q)

(dbg "dbg!(" p ")" q)

(lp "loop {" n> q n "}" > q)
