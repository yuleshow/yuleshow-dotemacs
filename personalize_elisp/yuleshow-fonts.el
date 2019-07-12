;;  http://blog.boreas.ro/2010/07/emacs-different-fonts-in-different.html

(if (eq system-type 'windows-nt) t)

(if (eq system-type 'darwin) t)

(if (eq system-type 'gnu/linux) t)


(defun my-buffer-face-mode-variable () 
  "Set font to a variable width (proportional) fonts in current buffer" 
  (interactive)
  ;;  (setq buffer-face-mode-face '(:family "MingLiU" :height 100 :width semi-condensed))
  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "AR PL UKai CN"))
  ;; (setq buffer-face-mode-face
  ;;       '(:family "AR PL UKai CN"
  ;;                 :height 100
  ;;                 :width semi-condensed))
  ;;(buffer-face-mode)
  (set-fontset-font (frame-parameter nil 'font) 'ascii (font-spec :family "Consolas")))

;; Use monospaced font faces in current buffer
(defun my-buffer-face-mode-fixed () 
  "Sets a fixed width (monospace) font in current buffer" 
  (interactive) 
  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "GenRyuMin TW"))
  ;; (set-fontset-font (frame-parameter nil 'font)
  ;;                'ascii (font-spec :family "Inconsolata"
  ;;                                ))
                                        ;   (setq buffer-face-mode-face
                                        ;        '(:family "Inconsolata"
                                        ;                 :height 100))
                                        ; (buffer-face-mode))
  )

;; Set default font faces for Info and ERC modes
                                        ; (add-hook 'erc-mode-hook 'my-buffer-face-mode-variable)
(add-hook 'erc-mode-hook 'my-buffer-face-mode-fixed)
(add-hook 'Info-mode-hook 'my-buffer-face-mode-variable)

;; Control + scroll to change font type
(global-set-key [C-mouse-4] 'my-buffer-face-mode-fixed)
(global-set-key [C-mouse-5] 'my-buffer-face-mode-variable)
(global-set-key (kbd "<C-wheel-left>") 'my-buffer-face-mode-fixed)
(global-set-key (kbd "<C-wheel-right>") 'my-buffer-face-mode-variable)
(global-set-key (kbd "<C-wheel-up>") 'my-buffer-face-mode-fixed)
(global-set-key (kbd "<C-wheel-down>") 'my-buffer-face-mode-variable)


;; Shift + scroll to change font size
(global-set-key [S-mouse-4] 'text-scale-increase)
(global-set-key [S-mouse-5] 'text-scale-decrease)
(global-set-key (kbd "<S-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<S-wheel-down>") 'text-scale-decrease)
(global-set-key (kbd "<S-wheel-left>") 'text-scale-increase)
(global-set-key (kbd "<S-wheel-right>") 'text-scale-decrease)

                                        ; (defun my-han-kai () 
                                        ;   (interactive) 
                                        ;  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "AR PL UKai CN")))


(if (eq system-type 'darwin)  (defun my-han-kai () 
                                (interactive) 
                                (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "Kaiti TC"))))

(if (eq system-type 'gnu/linux) (defun my-han-kai () 
                                  (interactive) 
                                  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "AR PL UKai CN"))))

(defun my-han-ming-GenRyu () 
  (interactive) 
  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "GenRyuMin TW")))

(defun my-han-ming-GenYo () 
  (interactive) 
  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "GenYoMin TW")))

(defun my-han-ming-Ting () 
  (interactive) 
  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "TingMing")))

(defun my-han-sans-Yunlin () 
  (interactive) 
  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "Yunlin Sans")))

(defun my-han-ming-PT () 
  (interactive) 
  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "菩提細明")))

(defun my-han-kangxi () 
  (interactive) 
  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "康熙字典体（全字库）")))

(defun my-han-SentyWen () 
  (interactive) 
  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "SentyWen")))

(defun my-han-HanaMinA () 
  (interactive) 
  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "HanaMinA")))
(defun my-han-HanaMinB () 
  (interactive) 
  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "HanaMinB")))

(defun my-Gong-Shu () 
  (interactive) 
  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "H-GungSeo")))

(defun my-han-MingLiU () 
  (interactive) 
  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "MingLiU")))

(defun my-WenYue () 
  (interactive) 
  (set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "WenYue GuDianMingChaoTi (Non-Commercial Use) W5")))

; (global-set-key (kbd "C-1") 'my-han-ming-Ting)
(global-set-key (kbd "C-1") 'my-han-MingLiU)
(global-set-key (kbd "C-2") 'my-han-ming-GenRyu)
(global-set-key (kbd "C-3") 'my-han-SentyWen)
(global-set-key (kbd "C-4") 'my-han-sans-Yunlin)
(global-set-key (kbd "C-5") 'my-han-kai)
(global-set-key (kbd "C-6") 'my-Gong-Shu)
(global-set-key (kbd "C-7") 'my-han-kangxi)
(global-set-key (kbd "C-8") 'my-han-HanaMinA)
(global-set-key (kbd "C-9") 'my-WenYue)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun my-ascii-TNR () 
  (interactive) 
  (custom-set-faces '(default ((t 
                                (:family "Times New Roman" 
                                         :foundry "TMC " 
                                         :slant normal 
                                         :weight normal 
                                         :height 102 
                                         :width normal))))))

(defun my-ascii-Georgia () 
  (interactive) 
  (custom-set-faces '(default ((t 
                                (:family "Georgia" 
                                         :foundry "MS  " 
                                         :slant normal 
                                         :weight normal 
                                         :height 102 
                                         :width normal))))))

(defun my-ascii-Tahoma () 
  (interactive) 
  (custom-set-faces '(default ((t 
                                (:family "Tahoma" 
                                         :foundry "MS  " 
                                         :slant normal 
                                         :weight normal 
                                         :height 102 
                                         :width normal))))))
(defun my-ascii-Ubuntu () 
  (interactive) 
  (custom-set-faces '(default ((t 
                                (:family "Ubuntu" 
                                         :foundry "DAMA" 
                                         :slant normal 
                                         :weight normal 
                                         :height 102 
                                         :width normal))))))

(defun my-ascii-Ubuntu-Mono () 
  (interactive) 
  (custom-set-faces '(default ((t 
                                (:family "Ubuntu Mono" 
                                         :foundry "DAMA" 
                                         :slant normal 
                                         :weight normal 
                                         :height 102 
                                         :width normal))))))


(defun my-ascii-DejaVu-Mono () 
  (interactive)
  (custom-set-faces
   '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 102 :width normal)))))
  )
(defun my-ascii-ToxTypewriter () 
  (interactive)
  (custom-set-faces
   '(default ((t (:family "Tox Typewriter" :foundry "PfEd" :slant normal :weight normal :height 102 :width normal)))))
  )


(defun my-ascii-AnonymousPro () 
  (interactive)
  (custom-set-faces
   '(default ((t (:family "Anonymous Pro" :foundry "mlss" :slant normal :weight normal :height 102 :width normal)))))
  )
(defun my-ascii-SourceCode () 
  (interactive)
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(default ((t (:family "Source Code Variable" :foundry "ADBO" :slant normal :weight normal :height 102 :width normal)))))
  )

(defun my-ascii-Courier () 
  (interactive)
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(default ((t (:family "Courier New" :foundry "ADBO" :slant normal :weight normal :height 102 :width normal)))))
  )

(global-set-key (kbd "M-1") 'my-ascii-TNR)
(global-set-key (kbd "M-2") 'my-ascii-Georgia)
(global-set-key (kbd "M-3") 'my-ascii-Tahoma)
(global-set-key (kbd "M-4") 'my-ascii-Ubuntu)
(global-set-key (kbd "M-5") 'my-ascii-Ubuntu-Mono)
;;  (global-set-key (kbd "M-6") 'my-ascii-DejaVu-Mono)
(global-set-key (kbd "M-6") 'my-ascii-ToxTypewriter)
(global-set-key (kbd "M-7") 'my-ascii-AnonymousPro)
(global-set-key (kbd "M-8") 'my-ascii-SourceCode)
(global-set-key (kbd "M-9") 'my-ascii-Courier)








(provide 'yuleshow-fonts)
