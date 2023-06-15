nix-mode

(buildphase > "buildPhase= ''" n (p "Build Instructions") n " '';")
(checkPhase > "checkPhase= ''" n (p "") n " '';")
(configurephase > "configurePhase= ''" n (p "") n " '';")
(fixupphase > "fixupPhase= ''" n (p "") n " '';")
(distphase > "distPhase= ''" n (p "") n " '';")
(patchphase > "patchPhase= ''" n (p "") n " '';")
(unpackphase > "unpackPhase= ''" n (p "") n " '';")
(installCheckPhasephase > "installCheckPhasePhase= ''" n (p "") n " '';")
(installphase > "installphase= ''" n p " mkdir -p $out/bin" n> "for f in $(find . -executable -type f);" n> "do" n> "cp $f $out/bin" n> "done}" n> " '';")

(gitpackage "{ lib" n ", stdenv" n ", fetchFromGitHub" n ", " (p "inputs") n ", " (p "inputs") n "}:" n n>
            "stdenv.mkDerivation rec {" n> "pname = \"" (p "" pkgn nil) "\";" n> "version = \"" p "\";" n n>
            "src = fetchFromGitHub {" n> "owner = \"" (p "" own) "\";" n> "repo = \"" (s pkgn) "\";" n>
            "rev = \"" "v${version}" "\";" n> "sha256 = \"" "${lib.fakeSha256}" "\";" n> "};" n n>
            "nativeBuildInputs = [ " (p "makeWrapper") " ];" n n> "BuildInputs = [ " (p) " ];" n n>
            "meta = with lib; {" n>
            "homepage = \"" "https://github.com/" (s own) "/" (s pkgn) "\";" n>
            "description = \"" (p) "\";" n>
            "license = licenses." (p (completing-read "License: " '("agpl3" "asl20" "bsd1" "bsd2" "bsd3" "free" "gpl2" "gpl2Only" "gpl2Plus" "gpl3" "gpl3Only" "gpl3Plus" "isc" "lgpl21Only" "lgpl21Plus" "lgpl2Only" "lgpl2Plus" "lgpl3" "lgpl3Only" "mit" "mpl20" "ofl" "unfree"))) ";" n>
            "maintainers = with maintainers; [ " (s own) " ];" n>
            "platforms = platforms." 
            (p (completing-read "Platform: " '("all" "allBut" "arm" "cygwin" "darwin" "freebsd" "gnu" "i686" "illumos" "linux" "mesaPlatforms" "mips" "netbsd" "none" "openbsd" "unix" "x86"))) ";" n> q "};" n> "}"
)
