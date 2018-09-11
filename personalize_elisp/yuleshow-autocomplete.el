(require 'auto-complete-config)


; (add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete-1.3.1/dict/")

(ac-config-default)

(add-hook 'cperl-mode-hook (lambda() 
                             (require 'perl-completion) 
                             (perl-completion-mode t)))



(add-hook  'cperl-mode-hook (lambda () 
                              (when                                   
                                  (require 'auto-complete nil t) ; no error whatever auto-complete.el is not installed.
                                (auto-complete-mode t) 
                                (make-variable-buffer-local 'ac-sources) 
                                (setq ac-sources '(ac-source-perl-completion)))))

(provide 'yuleshow-autocomplete)
