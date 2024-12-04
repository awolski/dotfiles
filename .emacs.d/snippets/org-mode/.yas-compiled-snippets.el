;;; Compiled snippets and support files for `org-mode'
;;; contents of the .yas-setup.el support file:
;;;
(defun yas-fortnight-offset (offset &optional date)
  (unless date (setq date (current-time)))
  (format-time-string "%Y-%m-%d %a" (time-add date (days-to-time offset))))
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
                     '(("<f" "* Fortnight beginning `(yas-fortnight-offset 0)`\n** Monday 1\n*** Kids swimming\nSCHEDULED: <`(yas-fortnight-offset 1)`>\n** Tuesday 2\n** Wednesday 3\n** Thursday 4\n** Friday 5\n** Saturday 6\n** Sunday 7\n** Monday 8\n** Tuesday 9\n** Wednesday 10\n** Thursday 11\n** Friday 12\n** Saturday 13\n** Sunday 14\n*** Something\nSCHEDULED: <`(yas-fortnight-offset 2)`>\n" "fortnight" nil nil nil "/home/tony/.emacs.d/snippets/org-mode/fortnight" nil nil)
                       ("<bj" "Bullet Journal\n\nI'm grateful for...\n- ${1:}\n\nI'm excited for...\n- ${2:}\n\nExercise\n- ${3:}\n\nJournal\n- $0" "bujo" nil nil nil "/home/tony/.emacs.d/snippets/org-mode/bujo" nil nil)))


;;; Do not edit! File generated at Fri Dec  8 14:19:29 2023
