fundamental-mode ;; Available everywhere

(tdy (format-time-string "%Y-%m-%d"))
(nw (format-time-string "<%Y-%0m-%0d %a %H:%0M>"))
(ystrd (format-time-string "<%Y-%0m-%0d %a>" (time-subtract nil (* 24 60 60))))
(tmrrow (format-time-string "<%Y-%0m-%0d %a>" (time-add nil (* 24 60 60))))
