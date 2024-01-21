(defun yas-fortnight-offset (offset &optional date)
  (unless date (setq date (current-time)))
  (format-time-string "%Y-%m-%d %a" (time-add date (days-to-time offset))))
