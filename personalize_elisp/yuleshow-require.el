(if (eq system-type 'windows-nt) 
    (progn (add-to-list 'load-path "~/dotemacs/") 
           (require 'windows.emacs)))

(if (eq system-type 'darwin) 
;;    (progn (add-to-list 'load-path "~/.emacs.d/")
      (require 'darwin.emacs))

(require 'yuleshow-loadpath)
(require 'yuleshow-defun) 
(require 'yuleshow-encode)
(require 'yuleshow-color)
(require 'yuleshow-autocomplete) 
(require 'yuleshow-misc) 
(require 'yuleshow-keyboard) 
(require 'yuleshow-evernote) 
(require 'yuleshow-weblogger) 
(require 'yuleshow-w3m)

(require 'yuleshow-canji5)


(require 'yuleshow-orgmode)


(require 'yuleshow-borrow)
(require 'yuleshow-fonts)
                                        ; (require 'edit-server)
                                        ; (edit-server-start)
(provide 'yuleshow-require)
