(add-to-list 'load-path "~/.emacs.d/site-lisp/wubi")
(require 'wubi)
(wubi-load-local-phrases) ; add user's Wubi phrases
(register-input-method
 "chinese-wubi" "Chinese-GB" 'quail-use-package
 "WuBi" "WuBi"
 "wubi")
(setq default-input-method "chinese-wubi")

(provide 'yuleshow-wubi)
