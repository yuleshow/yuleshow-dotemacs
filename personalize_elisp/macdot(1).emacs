(if (eq system-type 'windows-nt)
   (progn
      (add-to-list 'load-path "~/dotemacs/")

      )
  )

(if (eq system-type 'darwin)
    (progn 
       (add-to-list 'load-path "/Users/yuleshow/.emacs.d/")
      )
  )
(require 'yuleshow-require)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(font-use-system-font t)
 '(inhibit-startup-screen t)
 '(org-agenda-files (quote ("~/Kuaipan/myDiary/201310.org" "~/Kuaipan/myDiary/201309.org" "~/Kuaipan/myDiary/201305.org" "~/test.org")))
 '(quote (weblogger-config-alist (quote (("default" "http://www.yuleshow.com/wordpress/xmlrpc.php" "Yule Show" "" "1")))))
 '(recentf-max-menu-items 15)
 '(savehist-mode t)
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
