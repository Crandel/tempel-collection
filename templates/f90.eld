f90-mode

(subr "subroutine " (p "name" name) " (" (p "arg" arg) ")" n>
            "real, intent(in) :: " (s arg) n> q n "end subroutine " (s name) >)
(puresubr "pure subroutine " (p "name" name) " (" (p "arg" arg)
                 ")" n> "real, intent(in) :: " (s arg) n> q n
                 "end subroutine " (s name) >)
