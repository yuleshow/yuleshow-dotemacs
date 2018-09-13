(setq-default cursor-type 'bar)
(blink-cursor-mode 1)

(auto-image-file-mode t)


;; (setq browse-url-generic-program (executable-find "google-chrome"))
;;(setq browse-url-generic-program (executable-find "chrome"))


;; (setq browse-url-browser-function 'browse-url-generic)

(setq initial-frame-alist '((top . 0) (left . 0) (width . 142) (height . 49)))

(setq frame-title-format "yuleshow@%b")

(custom-set-variables

 '(column-number-mode t)
'(font-use-system-font t)
'(inhibit-startup-screen t)
'(recentf-max-menu-items 15)
'(savehist-mode t)
'(show-paren-mode t)
)

;; (require 'edit-server)
;; (edit-server-start)

;; for avoiding put the backup file in the same folder
(setq backup-directory-alist '((".*" . "~/yuleshow-emacs-backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )
;;;;;;;;;;;;;;;;;;;;;;;;;

(setq auto-save-file-name-transforms
          `((".*" "~/yuleshow-emacs-backup" t)))



;; 这些都是通过Emacs的图形界面设置的。
   ;; 输入)后，高亮成对的括号


;; for showing the line numbers
(global-linum-mode 1)




(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)








(display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上  
(setq display-time-24hr-format t);;时间使用24小时制  
(setq display-time-day-and-date t);;时间显示包括日期和具体时间  
(setq display-time-use-mail-icon t);;时间栏旁边启用邮件设置  
(setq display-time-interval 10);;时间的变化频率，单位多少来着？  

(setq initial-frame-alist '((top . 0) (left . 0) (width . 142) (height . 49)))

(provide 'yuleshow-misc)
