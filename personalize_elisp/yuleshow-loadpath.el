(if (eq system-type 'windows-nt)
    (progn

      (add-to-list 'load-path "~/dotemacs/site-lisp")
      (add-to-list 'load-path "~/dotemacs/site-lisp/wubi")
      (add-to-list 'load-path "~/dotemacs/site-lisp/emacs-evernote-mode-read-only")
      (add-to-list 'load-path "~/dotemacs/site-lisp/twittering-mode")
      (add-to-list 'load-path "~/dotemacs/site-lisp/auto-complete-1.3.1")
      (add-to-list 'load-path "~/dotemacs/site-lisp/emacs-jabber-0.8.91")
      (add-to-list 'load-path "~/dotemacs/site-lisp/weibo.emacs")
      )
  )

(if (eq system-type 'darwin)
    (progn

      (add-to-list 'load-path "~/.emacs.d/site-lisp")
      (add-to-list 'load-path "~/.emacs.d/site-lisp/wubi")
      (add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-evernote-mode-read-only")
      (add-to-list 'load-path "~/.emacs.d/site-lisp/twittering-mode")
      (add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete-1.3.1")
      (add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-jabber-0.8.91")
      (add-to-list 'load-path "~/.emacs.d/site-lisp/weibo.emacs")
      )
  )
(if (eq system-type 'gnu/linux)
    (progn

      (add-to-list 'load-path "~/.emacs.d/site-lisp")
      (add-to-list 'load-path "~/.emacs.d/site-lisp/wubi")
      (add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-evernote-mode-read-only")
      (add-to-list 'load-path "~/.emacs.d/site-lisp/twittering-mode")
      (add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete-1.3.1")
      (add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-jabber-0.8.91")
      (add-to-list 'load-path "~/.emacs.d/site-lisp/weibo.emacs")
      )
  )

(provide 'yuleshow-loadpath)
