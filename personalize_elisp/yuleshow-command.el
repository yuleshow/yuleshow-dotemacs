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

(defun lbt ()
  (interactive)

  (beginning-of-buffer)
  (replace-string "<!--This file was converted to xhtml by LibreOffice - see https://cgit.freedesktop.org/libreoffice/core/tree/filter/source/xslt for the code.-->" "")

  (beginning-of-buffer)  
  (replace-string " profile=\"http://dublincore.org/documents/dcmi-terms/\"" "")

  (beginning-of-buffer)
  (replace-regexp "<meta name[ A-z=\".0-9:,\-]+/>" "")
  
  (beginning-of-buffer)
  (replace-regexp "<meta name[ A-z=\".0-9:\/]+>" "")
  
  (beginning-of-buffer)
  (replace-regexp "<link[ A-z=\".0-9:,\-\/]+/>" "")
    
  (beginning-of-buffer)
  (replace-regexp "width:[.0-9]+pt; " "")

  (beginning-of-buffer)
  (replace-regexp "height:[.0-9]+pt; " "")

  (beginning-of-buffer)
  (replace-string "p { white-space: nowrap; }" "")

  (beginning-of-buffer)
  (replace-string "text-shadow:none; " "")

  (beginning-of-buffer)
  (replace-string "text-decoration:none " "")
  
  (beginning-of-buffer)
  (replace-string "font-style:normal; " "")

  (beginning-of-buffer)
  (replace-regexp "font-size:[0-9]+pt; " "")

  (beginning-of-buffer)
  (replace-string "font-weight:normal; " "")

  (beginning-of-buffer)
  (replace-regexp "font-family:[A-Za-z ]+; " "")

  (beginning-of-buffer)
  (replace-string "! important; " "")
  (beginning-of-buffer)
  (replace-string "</p><p>" "<br />")

  (beginning-of-buffer)
  (replace-regexp "<td[=\"A-z-:;0-9. ]+>" "<td width=50% valign=\"top\">")

  

  (beginning-of-buffer)
  (replace-regexp "<colgroup><col[ A-z0-9\"=]+/><col[ A-z0-9\"=]+/></colgroup>" "")

  (beginning-of-buffer)
  (replace-regexp "<tr class=\"ro[0-9]+\">" "<tr>")

  (beginning-of-buffer)
  (replace-regexp "<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"ta[0-9]+\">" "<table border=\"0\" width=100%>")

  (beginning-of-buffer)
  (replace-string "{ font-weight:bold; }" "{ font-weight:bold; color:yellow; background-color:red; }")
  
  (beginning-of-buffer)
  (replace-string "{ font-style:italic; }" "{ font-weight:bold; color:white; background-color:red; }")

  (beginning-of-buffer)
  (replace-string "{ text-decoration:underline; }"  "{ font-weight:bold; color:yellow; background-color:black; }")
  

  (beginning-of-buffer)
  (replace-string "{ text-decoration:underline; font-style:italic; }" "{ font-weight:bold; color:white; background-color:black; }")

  (beginning-of-buffer)
  (replace-string "{ font-weight:bold; font-style:italic; }" "{ font-weight:bold; color:white; background-color:blue; }")


  (beginning-of-buffer)
  (replace-string "{ font-weight:bold; text-decoration:underline; }" "{ font-weight:bold; color:white; background-color:blue; }")
  

  (beginning-of-buffer)
  (replace-string "<tr><td width=50% valign=\"top\"><p>put a line here</p></td><td width=50% valign=\"top\"> </td></tr>" "</table><hr /><center><h2>华丽丽的分隔线</h2></center><hr /><table border=\"0\" width=100%>")

  (beginning-of-buffer)
  )

(provide 'yuleshow-command)


