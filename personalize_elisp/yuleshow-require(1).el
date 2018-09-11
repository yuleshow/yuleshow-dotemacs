(if (eq system-type 'windows-nt)
   (progn
      (add-to-list 'load-path "~/dotemacs/")
      (require 'windows.emacs)
      )
  )

(if (eq system-type 'darwin)
   (progn
      (add-to-list 'load-path "~/.emacs.d/")
      (require 'darwin.emacs)
      )
  )

(require 'yuleshow-loadpath)
(require 'yuleshow-color)
; (require 'yuleshow-autocomplete)
(require 'yuleshow-misc)
 (require 'yuleshow-keyboard)
 (require 'yuleshow-defun)
 (require 'yuleshow-evernote)
 (require 'yuleshow-weblogger)
 (require 'yuleshow-w3m)


 (require 'yuleshow-wubi) 
;(setq default-input-method "chinese-cns-tsangchi")
; (require 'yuleshow-weibo)
(require 'yuleshow-orgmode)


; (require 'yuleshow-jabber)
(require 'yuleshow-borrow)
(require 'yuleshow-fonts)
(provide 'yuleshow-require)
