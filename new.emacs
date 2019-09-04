(require 'package) ;; You might already have this line
;; (add-to-list 'package-archives              '("melpa" . "https://melpa.org/packages/"))
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/") 
                         ("marmalade" . "https://marmalade-repo.org/packages/") 
                         ("melpa" . "https://melpa.org/packages/")))

(package-initialize) ;; You might already have this line

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(if (eq system-type 'windows-nt) 
    (progn (add-to-list 'load-path "~/dotemacs/")))

(if (eq system-type 'darwin) 
    (progn (add-to-list 'load-path "/Users/yuleshow/.emacs.d/personalize_elisp") 
           (add-to-list 'load-path "~/.emacs.d/site-lisp")))
    (add-hook 'after-init-hook 'exec-path-from-shell-initialize)
    
(if (eq system-type 'gnu/linux) 
    (progn (add-to-list 'load-path "~/.emacs.d/personalize_elisp") 
           (setq ispell-program-name "/usr/bin/ispell")))

(if (eq system-type 'windows-nt) 
    (progn (add-to-list 'load-path "~/dotemacs/") 
           (require 'windows.emacs)))

(if (eq system-type 'darwin) 
;;    (progn (add-to-list 'load-path "~/.emacs.d/")
      (require 'darwin.emacs))


(require 'yuleshow-require)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(font-use-system-font t)
 '(inhibit-startup-screen t)
 '(org-agenda-files
   (quote
    ("~/Google_Drive/myDiary/201310.org" "~/Google_Drive/myDiary/201309.org" "~/Google_Drive/myDiary/201305.org" "~/test.org")) t)
 '(package-selected-packages
   (quote
    (web-beautify html-check-frag org-ehtml bing-dict youdao-dictionary osx-dictionary helm-wordnet elisp-format decide color-theme-solarized chess better-defaults beacon avk-emacs-themes auto-save-buffers-enhanced auto-complete 2048-game)))
 '(quote
   (weblogger-config-alist
    (quote
     (("default" "http://www.yuleshow.com/wordpress/xmlrpc.php" "Yule Show" "" "1")))))
 '(recentf-max-menu-items 15)
 '(savehist-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
;; (setq ispell-program-name "/usr/local/bin/ispell")
;;  (beacon-mode 1)
;; (require 'package)
;; (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
;; (add-to-list 'load-path "~/.emacs.d/site-lisp")
(require 'unicad)

(add-to-list 'load-path "~/.emacs.d/site-lisp/tongwen-emacs")
(require 'hanconvert)


(add-to-list 'load-path "~/.emacs.d/site-lisp/exec-path-from-shell")
(require 'exec-path-from-shell)

;; ;; I set this at the beginning of my init.el for other mac specific settings
;; (defconst *is-a-mac* (eq system-type 'darwin))

;; ;; Later on, after loading exec-path-from-shell package
;; (if *is-a-mac*
;;     (add-hook 'after-init-hook 'exec-path-from-shell-initialize))

;; (autoload 'ispell-get-word "ispell")



;; (add-to-list 'load-path "~/.emacs.d")
(require 'edit-server)
(edit-server-start)

;; (require 'color-theme-solarized)

;; ;;  (add-hook 'minibuffer-setup-hook 'my-minibuffer-setup)
;; ;;  (defun my-minibuffer-setup ()
;; ;;         (set (make-local-variable 'face-remapping-alist)
;; ;;            '((default :height 2.0))))
;; ;;  (setq 1on1-minibuffer-frame-font
;; ;;           "-*-Lucida Console-normal-r-*-*-14-112-96-96-c-*-iso8859-1")


;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(column-number-mode t)
;;  '(custom-safe-themes
;;    (quote
;;     ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
;;  '(font-use-system-font t)
;;  '(inhibit-startup-screen t)
;;  '(package-selected-packages
;;    (quote
;;     (color-theme-solarized youdao-dictionary osx-dictionary color-theme chess bing-dict better-defaults beacon avk-emacs-themes auto-save-buffers-enhanced 2048-game)))
;;  '(quote
;;    (weblogger-config-alist
;;     (quote
;;      (("default" "http://www.yuleshow.com/wordpress/xmlrpc.php" "Yule Show" "" "1")))))
;;  '(recentf-max-menu-items 15)
;;  '(savehist-mode t)
;;  '(show-paren-mode t))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(column-number-mode t) 
;;  '(font-use-system-font t) 
;;  '(inhibit-startup-screen t) 
;;  '(package-selected-packages (quote (elisp-format youdao-dictionary osx-dictionary
;;                                                   color-theme-solarized chess bing-dict
;;                                                   better-defaults beacon avk-emacs-themes
;;                                                   auto-save-buffers-enhanced 2048-game))) 
;;  '(quote (weblogger-config-alist (quote (("default" "http://www.yuleshow.com/wordpress/xmlrpc.php"
;;                                           "Yule Show" "" "1"))))) 
;;  '(recentf-max-menu-items 15) 
;;  '(savehist-mode t) 
;;  '(show-paren-mode t))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )








; (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "TingMing"))




; (global-visual-line-mode t)



(add-hook 'text-mode-hook #'toggle-word-wrap)


(require 'yuleshow-command)
(require 'yuleshow-welcome)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
