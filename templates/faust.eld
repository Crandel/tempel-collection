faust-mode

(hdr "declare name \"" (p "name") "\";" n
        "declare version \"" (p "0.1") "\";" n
        "declare author \"" (p (user-full-name)) "\";" n
        "declare license \""
        (p (completing-read "License: " '("AGPL-3.0-only" "Apache-2.0"
                                         "BSD-3-Clause" "GPL-3.0-or-later"
                                         "LGPL-3.0-or-later" "MIT" "MPL-2.0")))
        "\";" n "declare copyright \"" (p (format-time-string "%Y"))
        " - " (format-time-string "%Y") ", " (p (user-full-name)) "\";" n q)
