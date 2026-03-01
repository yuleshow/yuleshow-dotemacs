;;; makesure-backup.el --- Redirect ALL runtime/state files out of .emacs.d
;;; Keep .emacs.d as config-only — no runtime artifacts.

;; ============================================================
;; Base directory — everything goes under here
;; ============================================================
(defconst makesure-backup-dir
  (expand-file-name "~/yuleshow-emacs-backup/")
  "Root directory for all Emacs runtime, backup, and state files.")

;; Sub-directories for organization
(defconst makesure-backup-subdir    (concat makesure-backup-dir "backups/"))
(defconst makesure-autosave-subdir  (concat makesure-backup-dir "auto-save/"))
(defconst makesure-history-subdir   (concat makesure-backup-dir "history/"))
(defconst makesure-cache-subdir     (concat makesure-backup-dir "cache/"))
(defconst makesure-eshell-subdir    (concat makesure-backup-dir "eshell/"))
(defconst makesure-custom-subdir    (concat makesure-backup-dir "custom/"))

;; Create all directories
(dolist (dir (list makesure-backup-subdir
                   makesure-autosave-subdir
                   makesure-history-subdir
                   makesure-cache-subdir
                   makesure-eshell-subdir
                   makesure-custom-subdir))
  (unless (file-directory-p dir)
    (make-directory dir t)))

;; ============================================================
;; 1. Backups  →  ~/yuleshow-emacs-backup/backups/
;; ============================================================
(setq make-backup-files t
      backup-by-copying t
      backup-directory-alist `(("." . ,makesure-backup-subdir))
      version-control t
      kept-new-versions 20
      kept-old-versions 5
      delete-old-versions t)

;; ============================================================
;; 2. Auto-save  →  ~/yuleshow-emacs-backup/auto-save/
;; ============================================================
(setq auto-save-file-name-transforms
      `((".*" ,makesure-autosave-subdir t))
      auto-save-list-file-prefix
      (concat makesure-autosave-subdir ".saves-")
      auto-save-timeout 20
      auto-save-interval 200)

;; Disable lock files (.#foo) — they pollute working directories
(setq create-lockfiles nil)

;; ============================================================
;; 3. History & state  →  ~/yuleshow-emacs-backup/history/
;; ============================================================
(setq savehist-file            (concat makesure-history-subdir "minibuffer-history")
      recentf-save-file        (concat makesure-history-subdir "recentf")
      save-place-file          (concat makesure-history-subdir "places")
      bookmark-default-file    (concat makesure-history-subdir "bookmarks")
      ido-save-directory-list-file (concat makesure-history-subdir "ido.last"))

;; ============================================================
;; 4. Cache & misc  →  ~/yuleshow-emacs-backup/cache/
;; ============================================================
(setq url-configuration-directory (concat makesure-cache-subdir "url/")
      url-cookie-file             (concat makesure-cache-subdir "url/cookies")
      nsm-settings-file          (concat makesure-cache-subdir "network-security.data")
      ac-comphist-file            (concat makesure-cache-subdir "ac-comphist.dat")
      tramp-persistency-file-name (concat makesure-cache-subdir "tramp")
      async-byte-compile-log-file (concat makesure-cache-subdir "async-bytecomp.log")
      org-journal-cache-file      (concat makesure-cache-subdir "org-journal.cache"))

;; bing-dict data files
(with-eval-after-load 'bing-dict
  (setq bing-dict-cache-file (concat makesure-cache-subdir "bing-dict-save.el"))
  (setq bing-dict-vocabulary-file (concat makesure-cache-subdir "bing-dict-vocabulary.org")))

;; ============================================================
;; 5. Eshell  →  ~/yuleshow-emacs-backup/eshell/
;; ============================================================
(setq eshell-directory-name makesure-eshell-subdir)

;; ============================================================
;; 6. Custom file  →  ~/yuleshow-emacs-backup/custom/custom.el
;;    Prevents Emacs from rewriting new.emacs (.emacs)
;; ============================================================
(setq custom-file (concat makesure-custom-subdir "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

;; ============================================================
;; 7. Secrets via auth-source (~/.authinfo.gpg or ~/.authinfo)
;;    Youdao keys: machine openapi.youdao.com login <APP_KEY> password <SECRET_KEY>
;;    The youdao-dictionary package reads auth-source automatically.
;; ============================================================

(provide 'makesure-backup)
