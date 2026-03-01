;;; makesure-loadpath.el --- Add site-lisp directories to load-path

(defconst makesure-site-lisp
  (cond ((eq system-type 'windows-nt) "~/dotemacs/site-lisp")
        (t "~/.emacs.d/site-lisp"))
  "Root site-lisp directory.")

(add-to-list 'load-path makesure-site-lisp)
(add-to-list 'load-path (concat makesure-site-lisp "/canji5"))

(provide 'makesure-loadpath)
