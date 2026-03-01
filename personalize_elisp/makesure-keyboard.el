;; (global-set-key "\M-c" 'clipboard-kill-ring-save)
(global-set-key (kbd "M-c") 'clipboard-kill-ring-save)
(global-set-key (kbd "M-'") 'line-to-top) ; personal defind routine in makesure-defun.el
;; (global-set-key [M-left] 'previous-buffer)
(global-set-key (kbd "<M-left>") 'previous-buffer)
(global-set-key (kbd "<M-right>") 'next-buffer)
(global-set-key (kbd "<M-up>") 'other-window-backward) ; personal defind routine in makesure-defun.el
(global-set-key (kbd "<M-down>") 'other-window)
(global-set-key (kbd "M-+") 'enlarge-window)
(global-set-key (kbd "M-]") 'enlarge-window)
(global-set-key (kbd "M--") 'shrink-window)
(global-set-key (kbd "M-[") 'shrink-window)
;; (global-set-key "\M-s" 'save-buffer)
;; (global-set-key [M-s] 'save-buffer)
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "M-/") 'bing-dict-brief)
(global-set-key (kbd "C-c d") 'osx-dictionary-search-word-at-point)
;;  (global-set-key "\M-\\" 'youdao-dictionary-search-at-point-tooltip)
(defun youdao-dictionary-search-at-point-brief ()
  "Search word at point and show result in minibuffer (like bing-dict-brief)."
  (interactive)
  (let ((word (if (use-region-p)
                  (buffer-substring-no-properties (region-beginning) (region-end))
                (thing-at-point 'word t))))
    (if word
        (message (youdao-dictionary--format-result (youdao-dictionary--request word)))
      (message "Nothing to look up"))))
(global-set-key (kbd "M-\\") 'youdao-dictionary-search-at-point-brief)
(global-set-key (kbd "M-a") 'mark-whole-buffer)
(global-set-key (kbd "<f8>") 'menu-bar-mode)
;; (global-set-key <f8> 'menu-bar-mode)
(global-set-key (kbd "C-x h") 'split-window-horizontally)
(global-set-key (kbd "C-x v") 'split-window-vertically)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "<f3>") 'shell)

(global-set-key (kbd "s-f") 'elisp-format-region)
(global-set-key (kbd "ƒ") 'elisp-format-region)

(global-set-key (kbd "C-x d") 'my-insert-date) ; personal defind routine in makesure-defun.el
(global-set-key (kbd "C-x t") 'my-insert-time) ; personal defind routine in makesure-defun.el


                                        ;(global-set-key (kbd "C-x o") 'open-dotemacs-file)
(global-set-key (kbd "C-x o") 'open-custom-file)
(global-set-key (kbd "C-x g") 'goldendict-dwim)
(global-set-key (kbd "s-g") 'goldendict-dwim)





(provide 'makesure-keyboard)
