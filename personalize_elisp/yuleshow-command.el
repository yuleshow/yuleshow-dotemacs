(defun wechat-format ()
  "One sentence summary of what this command do.

More details here. Be sure to mention the return value if relevant.
Lines here should not be 門longer than 70 chars,
and don't indent them."

  (interactive)
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

  (hanconvert-to-simple)
  (let (var1 var2 …)
    (setq var1 …)
    (setq var2 …)
    ;; do something …
    ))

(provide 'yuleshow-command)
