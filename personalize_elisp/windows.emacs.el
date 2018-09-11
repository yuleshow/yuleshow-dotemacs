
(run-with-idle-timer 0.5 nil 'w32-send-sys-command 61488)


;; Setting English Font
(set-face-attribute
 'default nil :font "Courier New-18")
;; 'default nil :font "Courier New-18:Bold")
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo)) ;
(set-fontset-font (frame-parameter nil 'font)
charset
;; (font-spec :family "SimSun" :size 24)))
(font-spec :family "MingLiU" :size 24)))









(provide 'windows.emacs)
