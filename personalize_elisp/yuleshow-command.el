(defun mp3tag ()
  (interactive)
  (hanconvert-tradition)
  (beginning-of-buffer)
  (replace-string ".mp3" "")
  (beginning-of-buffer)
  (replace-string ".m4a" "")
  (beginning-of-buffer)
  (replace-string "  " " ")
  (save-buffer)

  )

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


(defun jpn-together ()

  (interactive)

  (beginning-of-buffer)
  (replace-string "	#	" "#")

  (beginning-of-buffer)
  (replace-string "\n#\n" "\n\n")
  (beginning-of-buffer)
  (replace-string "\n#\n" "\n\n")
  (beginning-of-buffer)
  (replace-string "\n#\n" "\n\n")

  (beginning-of-buffer)
  )

(defun jpn-right ()

  (interactive)

  (beginning-of-buffer)
  (replace-string " 或 " "或")

;; (beginning-of-buffer)
;; (replace-string "" "")

  (beginning-of-buffer)
  (replace-string " 到 " "到")
  (beginning-of-buffer)
  (replace-string " 至 " "至")
  (beginning-of-buffer)
  (replace-string " 英寸" "英寸")
  (beginning-of-buffer)
  (replace-string " 厘米" "厘米")
  (beginning-of-buffer)
  (replace-string "“" "「")
  (beginning-of-buffer)
  (replace-string "”" "」")
  (beginning-of-buffer)
  (replace-string "名為 " "名為")
  (beginning-of-buffer)
  (replace-string " 的" "的")
  (beginning-of-buffer)
  (replace-string "% " "%")
  (beginning-of-buffer)
  (replace-string "(" "（")
  (beginning-of-buffer)
  (replace-string ")" "）")
  (beginning-of-buffer)
  (replace-string "" "")
  (beginning-of-buffer)
  (replace-string "" "")

(beginning-of-buffer)
(replace-string " 1" "1")
(beginning-of-buffer)
(replace-string " 2" "2")
(beginning-of-buffer)
(replace-string " 3" "3")
(beginning-of-buffer)
(replace-string " 4" "4")
(beginning-of-buffer)
(replace-string " 5" "5")
(beginning-of-buffer)
(replace-string " 6" "6")
(beginning-of-buffer)
(replace-string " 7" "7")
(beginning-of-buffer)
(replace-string " 8" "8")
(beginning-of-buffer)
(replace-string " 9" "9")
(beginning-of-buffer)
(replace-string " 0" "0")
(beginning-of-buffer)
(replace-string "1 " "1")
(beginning-of-buffer)
(replace-string "2 " "2")
(beginning-of-buffer)
(replace-string "3 " "3")
(beginning-of-buffer)
(replace-string "4 " "4")
(beginning-of-buffer)
(replace-string "5 " "5")
(beginning-of-buffer)
(replace-string "6 " "6")
(beginning-of-buffer)
(replace-string "7 " "7")
(beginning-of-buffer)
(replace-string "8 " "8")
(beginning-of-buffer)
(replace-string "9 " "9")
(beginning-of-buffer)
(replace-string "0 " "0")
(beginning-of-buffer)
(replace-string " ⅛" "⅛")
(beginning-of-buffer)
(replace-string "⅛ " "⅛")
(beginning-of-buffer)
(replace-string " ¼" "¼")
(beginning-of-buffer)
(replace-string "¼ " "¼")
(beginning-of-buffer)
(replace-string " ½" "½")
(beginning-of-buffer)
(replace-string "½ " "½")
(beginning-of-buffer)
(replace-string " ¾" "¾")
(beginning-of-buffer)
(replace-string "¾ " "¾")
(beginning-of-buffer)
(replace-string " 夸脫" "夸脫")
(beginning-of-buffer)
(replace-string " 茶匙" "茶匙")
(beginning-of-buffer)
(replace-string " 分鐘" "分鐘")
(beginning-of-buffer)
(replace-string " 次" "次")
(beginning-of-buffer)
(replace-string " 湯匙" "湯匙")
(beginning-of-buffer)
(replace-string "拍幹" "拍乾")
(beginning-of-buffer)
(replace-string "食譜" "菜譜")
(beginning-of-buffer)
(replace-string "昆布海帶" "昆布")
(beginning-of-buffer)
(replace-string "咸" "鹹")

(beginning-of-buffer)
(replace-string "） " "）")
(beginning-of-buffer)
(replace-string " （" "（")

(beginning-of-buffer)
(replace-string "大石" "出汁")
(beginning-of-buffer)
(replace-string "乾鰹魚" "鰹魚乾")
(beginning-of-buffer)
(replace-string "鰹魚干" "鰹魚乾")
(beginning-of-buffer)
(replace-string "像" "象")
(beginning-of-buffer)
(replace-string "干食品" "乾食品")
(beginning-of-buffer)
(replace-string "幹鰹魚片" "鰹魚乾片")
(beginning-of-buffer)
(replace-string "三葉草" "鴨兒芹")
  
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
  (replace-string "<body dir=\"ltr\">" "<body>
<center><h1>老波头《川菜平反论》调色盘规范</h1></center>

<h2><font color=\"#ffff00\"><span style=\"background: #ff0000\"><b>红底黄字</b></span></font></h2>
表示与原文一模一样，一字未改
<h2><font color=\"#ffffff\"><span style=\"background: #ff0000\"><b>红底白字</b></span></font></h2>
与原文一样，但在语句中的次序被改变了，如：<br />
姜（拍松）改成：拍松的姜，标前置移动词语，即拍松的姜
<h2><font color=\"#ffff00\"><span style=\"background: #000000\"><b>黑底黄字</b></span></font></h2>
同义动词、副词的改变，计量单位改变，其它同义词，垫虚词，如（皆实例）：<br />
小时，三十分钟：全书把原书所有的“小时”、“三十分钟”改成了“钟头”、“半个钟头”，共计29次<br />
旺火，改成了：猛火，全书把原书所有的“旺火”改成了“猛火”，共计44次<br />
按上法，改成了：照此法<br />
冬天、夏天，改成了：冬季、夏季<br />
盛于，改成了：装在<br />
另，改成了：另边厢（这写文章也太容易了吧？哪怕这三字也是抄蔡澜的，全书27次）<br />
炒一炒，改成了：兜一兜<br />
姜葱，改成：葱姜<br />
葱姜，改成：姜葱<br />
茸，改成：蓉<br />
二，改成：两<br />
<h2><font color=\"#ffffff\"><span style=\"background: #000000\"><b>黑底白字</b></span></font></h2>
同黑底黄字，同时又被改变了次序
<hr />
<h2>以下，左列未特殊标明的，均出自《中国菜谱 四川》，右列均出自《川菜平反论》</h2>
<hr />")

  (beginning-of-buffer)


  )

(provide 'yuleshow-command)


