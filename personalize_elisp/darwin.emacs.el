                                        ; The following 4 lines are only used in Mac system
 (setq mac-option-key-is-meta nil) ;This is disable the option key as meta
 (setq mac-command-key-is-meta t) ; this is enalbe the command key as meta
 (setq mac-command-modifier 'meta)
 (setq mac-option-modifier nil)


                                        ; (run-with-idle-timer 0.5 nil 'w32-send-sys-command 61488)


;; ;; Setting English Font
;; (set-face-attribute 'default nil 
;;                     :font "Courier New-18")
;; ;; 'default nil :font "Courier New-18:Bold")
;; ;; Chinese Font
;; (dolist (charset '(kana han symbol cjk-misc bopomofo)) ;
;;   (set-fontset-font (frame-parameter nil 'font) charset
;;                     ;; (font-spec :family "SimSun" :size 24)))
;;                     (font-spec :family "MingLiU" 
;;                                :size 24)))














;; Setting English Font
(set-face-attribute 'default nil 
                    :font "Courier New-18")
;; 'default nil :font "Courier New-18:Bold")
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo)) ;
  (set-fontset-font (frame-parameter nil 'font) charset
                    ;; (font-spec :family "SimSun" :size 24)))
                    (font-spec :family "MingLiU" 
                               :size 24)))









(provide 'darwin.emacs)
