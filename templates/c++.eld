c++-mode c++-ts-mode

(vec "std::vector<" (p "Type" type) "> " (p "name") "(" (p "10") ", "
     (s type) "(" p "));")
(opadd (p "Name" name) "& " (s name) "::operator+=(const " (s name)
       " &rhs) {" n> q n> "return *this;" n "}" >)
(opadddecl (p "Name" name) "& operator+=(const " (s name) " &rhs);")
(ctor (p "Name" name) "::" (s name) "(" (p "args") ")" n
      ": " (p "member(init)") n "{" n> q n "}" >)
(cls "class " (p "Name" name) " {" n "public:" n>
     (s name) "();" n> "virtual ~" (s name) "();" n q n "};" >)
(clsstd11 "class " (p "Name" name) " {" n "public:" n>
       (s name) "() = default;" n>
       (s name) "(const " (s name) "&) = default;" n>
       (s name) "(" (s name) "&&) noexcept = default;" n>
       "~" (s name) "() = default;" n>
       (s name) "& operator=(const " (s name) "&) = default;" n>
       (s name) "& operator=(" (s name) "&&) noexcept = default;" n q n "};" >)
(osop "std::ostream& operator<<(std::ostream& os, const "
            (p "Name" name) "& " (p "value") ") {" n> q n>
            "return os;" n "}" >)
(osopfrnd "friend std::ostream& operator<<(std::ostream&, const "
                (p "Name") "&);")
(isop "std::istream& operator>>(std::istream& is, "
            (p "Name" name) "& " (p "value") ") {" n> q n>
            "return is;" n "}" >)
(isopfrnd "friend std::istream& operator>>(std::istream&, "
                (p "Name") "&);")
(ns "namespace " (p "Namespace" ns) " {" n> r> n "}  // " (s ns))
(idxcnst "const " (p "Name") "& operator[](" (p "int index")
             ") const {" n> q n "}" >)
(idxcnstdecl "const " (p "Name") "& operator[](" (p "int index")
                  ") const;")

(doxfile "/**" n> "* \\file "
          (file-name-nondirectory (or (buffer-file-name) "file")) n>
          "* \\brief " (p "Summary") n> q n> "*/")
(doxfn "/**" n> "* \\brief " (p "Summary") n> q n>
              "* \\param " (p "parameter") n>
              "* \\return " (p "return value") n> "*/")
