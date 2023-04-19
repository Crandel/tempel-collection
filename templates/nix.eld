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

