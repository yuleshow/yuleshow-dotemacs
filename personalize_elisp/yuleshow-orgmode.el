(setq org-directory "~/org-mode")

(setq org-default-notes-file (concat org-directory "/notes.org"))


(setq org-agenda-files (list "~/org-mode/todo.org"))

(global-set-key (kbd "C-c a") 'org-agenda)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c b") 'org-iswitchb)

(define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates 
      '(
	("a" "Appointment" entry (file+headline "~/org-mode/taskdiary.org" "Calendar") "* APPT %^{Description} %^g %? Added: %U") 
	("n" "Notes" entry (file+datetree "~/org-mode/taskdiary.org") "* %^{Description} %^g %? Added: %U") 
	("t" "Task Diary" entry (file+datetree "~/org-mode/taskdiary.org") "* TODO %^{Description}  %^g %? Added: %U") 
	("j" "Journal" entry (file+datetree "~/org-mode/workjournal.org") "** %^{Heading}")  
	("l" "Log Time" entry (file+datetree "~/org-mode/timelog.org" ) "** %U - %^{Activity}  :TIME:")
	("f" "Food" entry (file+datetree+prompt "~/org-mode/food.org") "** %^g %^{Heading}")  
	("r" "Running" entry (file+datetree+prompt "~/org-mode/sport.org") "** :Running: %^{Heading}")
	("c" "Cycling" entry (file+datetree+prompt "~/org-mode/sport.org") "** :Cycling: %^{Heading}")
	("o" "Other sporting" entry (file+datetree+prompt "~/org-mode/sport.org") "** :Other sproting: %^{Heading}")
	("h" "Health issue" entry (file+datetree+prompt "~/org-mode/sport.org") "** :Health: %^{Heading}")

	))

(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(i)" "|" "DONE(d)" "DELEGATED(g)" "CANCELED(c)")))
(setq org-tood-keywords
      '((type "breakfast" "lunch" "supper" "|" "DONE")))

; for setting the line wrap in org-mode
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))


; (setq org-agenda-include-diary t)


;; #+TAGS: @office(o) @home(m)
;; #+TAGS: food(f) dining(n) cooking(k) breakfast(b) lunch(l) supper(s) 
;; #+TAGS: running(r) cycling(c) other_sport(p) health_issue(h)
;; #+TAGS: writing_topic(t)
;; #+TAGS: SIV(v)


(setq org-tag-alist '(
		      ("food" . ?f)
                      ("running" . ?r) ("cycling" . ?c) ("swimming" . ?g) ("health_issue" . ?h)
                      ("GYM" . ?y)
		      (:startgroup . nil)
		      ("breakfast" . ?b) ("lunch" . ?l) ("supper" . ?s)
		      (:endgroup . nil)
		      (:startgroup . nil)
		      ("cooking" . ?k) ("dining" . ?n)
		      (:endgroup . nil)
		      (:startgroup . nil)
		      ("working" . ?w) ("@home" . ?m)
		      (:endgroup . nil)
		      (:startgroup . nil)
		      
		      (:endgroup . nil)
		      (:startgroup . nil)
		      ("shopping" . ?p) ("online_shopping" . ?i)
		      (:endgroup . nil)
		      )
      )

(provide 'yuleshow-orgmode)









