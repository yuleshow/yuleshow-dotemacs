(defun my-insert-date () 
  (interactive)
  ;; (insert (format-time-string "</%m/%d/%y - %H%M>" (current-time))))
  (insert (format-time-string "<%m/%d/%y>" (current-time))))

(defun my-insert-time ()
  (interactive)
  (insert (format-time-string "[%H%M]" (current-time))))

(defun open-custom-file () 
  (interactive) 
  (find-file custom-file))

(defun open-dotemacs-file ( ) 
  (interactive) 
  (find-file dotemacs))

(defun other-window-backward () ; this is a function to combine on M-up keyset, to active
  "Back one window" 
  (interactive) 
  (other-window -1))

(defun line-to-top () 
  "Move cursor to top" 
  (interactive) 
  (recenter 0))



(provide 'yuleshow-defun)
