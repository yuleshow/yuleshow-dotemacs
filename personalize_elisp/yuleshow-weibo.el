;; git clone https://github.com/austin-----/weibo.emacs

;; sina-weibo

(require 'weibo)
;; Actually, I want every directory cache in my emacs data directory

(setq weibo-directory "~/.emacs.d/EmacsData/weibo/")





;; (require 'twittering-mode)

;; (setq twittering-use-ssl nil
;; twittering-oauth-use-ssl nil)
;; (setq twittering-icon-mode 1)
;; (setq twittering-enabled-services '(sina))
;; (setq twittering-accounts '((sina (username "yuleshow@mac.com")
;; 				  (auth oauth))))



(provide 'yuleshow-weibo)
