(defun han-format-simple ()

  (interactive)

  (hanconvert-simple)
  (beginning-of-buffer)
  (newline)
  (beginning-of-buffer)
  (replace-string "\n" "\n\n　　")
  (beginning-of-buffer)
  (delete-blank-lines)
  (delete-blank-lines)
  (end-of-buffer)
  (delete-blank-lines)
  (delete-blank-lines)

  )

(defun han-format-tradition ()

  (interactive)

  (hanconvert-tradition)
  (beginning-of-buffer)
  (delete-blank-lines)
  (beginning-of-buffer)
  (replace-string "\n\n" "\n")
  (beginning-of-buffer)
  (replace-string "　　" "")
  (end-of-buffer)
  (delete-blank-lines)
  (delete-blank-lines)

  )


(provide 'yuleshow-command)


