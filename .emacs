(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
  '((shell . t)))
