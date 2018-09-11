(add-to-list 'load-path "~/.emacs.d/site-lisp/canji5")
(require 'canji5)
(canji5-load-local-phrases) ; add user's Canji5 phrases
(register-input-method
 "chinese-canji5" "Chinese-UTF8" 'quail-use-package
 "Canji5" "Canji5"
 "canji5")
(setq default-input-method "chinese-canji5")

(provide 'yuleshow-canji5)
