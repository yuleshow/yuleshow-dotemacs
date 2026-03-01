(if (eq system-type 'windows-nt) 
    (progn (add-to-list 'load-path "~/dotemacs/") 
           (require 'windows.emacs)))

(if (eq system-type 'darwin) 
;;    (progn (add-to-list 'load-path "~/.emacs.d/")
      (require 'darwin.emacs))

(require 'makesure-loadpath)
(require 'makesure-defun) 
(require 'makesure-encode)
(require 'makesure-color)
(require 'makesure-autocomplete) 
(require 'makesure-misc) 
(require 'makesure-keyboard) 
(require 'makesure-evernote) 
(require 'makesure-weblogger) 
(require 'makesure-w3m)

(require 'makesure-canji5)


(require 'makesure-orgmode)


(require 'makesure-borrow)
(require 'makesure-fonts)
                                        ; (require 'edit-server)
                                        ; (edit-server-start)

(require 'makesure-backup)
(provide 'makesure-require)
