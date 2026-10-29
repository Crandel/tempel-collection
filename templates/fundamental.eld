fundamental-mode ;; Available everywhere

(tdy (format-time-string "%Y-%m-%d"))
(nw (format-time-string "<%Y-%0m-%0d %a %H:%0M>"))
(datebwd (format-time-string "<%Y-%0m-%0d %a>" (time-subtract nil (* 24 60 60))))
(datefwd (format-time-string "<%Y-%0m-%0d %a>" (time-add nil (* 24 60 60))))
