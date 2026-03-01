# yuleshow-dotemacs

Personal Emacs configuration (`.emacs.d`) for macOS, Linux, and Windows.

The entry point is **`new.emacs`**, which is symlinked to `~/.emacs`:

```sh
ln -s /path/to/yuleshow-dotemacs/new.emacs ~/.emacs
```

This repository is intended to be cloned into (or used as) `~/.emacs.d/`.

---

## Repository Structure

```
.
├── new.emacs                  # Main init file (→ ~/.emacs symlink)
├── personalize_elisp/         # Modular config files
│   ├── makesure-require.el    # Master loader — requires all modules in order
│   ├── makesure-loadpath.el   # Adds site-lisp directories to load-path
│   ├── makesure-defun.el      # Custom interactive functions
│   ├── makesure-encode.el     # Encoding / locale settings
│   ├── makesure-color.el      # Theme & color configuration
│   ├── makesure-autocomplete.el # Auto-complete setup
│   ├── makesure-misc.el       # Miscellaneous settings
│   ├── makesure-keyboard.el   # Keybindings & dictionary shortcuts
│   ├── makesure-evernote.el   # Evernote integration
│   ├── makesure-weblogger.el  # Blog posting (XML-RPC)
│   ├── makesure-w3m.el        # w3m browser config
│   ├── makesure-canji5.el     # Cangjie 5 input method
│   ├── makesure-orgmode.el    # Org-mode customisation
│   ├── makesure-borrow.el     # Borrowed / third-party snippets
│   ├── makesure-fonts.el      # Font configuration
│   ├── makesure-backup.el     # Runtime file redirection (backups, state, cache)
│   ├── makesure-command.el    # Custom commands
│   ├── makesure-welcome.el    # Startup / welcome screen
│   ├── darwin.emacs.el        # macOS-specific settings
│   └── windows.emacs.el       # Windows-specific settings
├── site-lisp/                 # Manually managed packages
│   ├── unicad.el              # Universal charset auto-detection
│   ├── edit-server.el         # Chrome "Edit with Emacs" server
│   └── canji5/                # Cangjie 5 input method tables
├── elpa/                      # ELPA-managed packages (auto-installed)
└── .gitignore
```

## Load Order

`new.emacs` → `makesure-require` → modules loaded in this sequence:

1. `makesure-loadpath` — set up `load-path`
2. `makesure-defun` — custom functions
3. `makesure-encode` — encoding
4. `makesure-color` — theme
5. `makesure-autocomplete` — completion
6. `makesure-misc` — misc settings
7. `makesure-keyboard` — keybindings
8. `makesure-evernote` — Evernote
9. `makesure-weblogger` — blog
10. `makesure-w3m` — browser
11. `makesure-canji5` — input method
12. `makesure-orgmode` — Org-mode
13. `makesure-borrow` — borrowed snippets
14. `makesure-fonts` — fonts
15. `makesure-backup` — runtime file redirection (loaded last)

---

## Runtime File Management

All Emacs runtime/state files are redirected **out of `.emacs.d/`** into `~/yuleshow-emacs-backup/`, keeping this repo config-only:

| Category | Directory |
| --- | --- |
| Backups (`file~`) | `~/yuleshow-emacs-backup/backups/` |
| Auto-save (`#file#`) | `~/yuleshow-emacs-backup/auto-save/` |
| History (minibuffer, recentf, places, bookmarks, ido) | `~/yuleshow-emacs-backup/history/` |
| Cache (url, cookies, tramp, network-security, ac-comphist) | `~/yuleshow-emacs-backup/cache/` |
| Eshell | `~/yuleshow-emacs-backup/eshell/` |
| Custom file (`custom-set-variables` / `custom-set-faces`) | `~/yuleshow-emacs-backup/custom/custom.el` |

Directories are created automatically on startup. Lock files (`.#foo`) are disabled.

---

## Keybindings

### General

| Key | Command |
| --- | --- |
| `M-s` | `save-buffer` |
| `M-a` | `mark-whole-buffer` |
| `M-g` | `goto-line` |
| `M-c` | `clipboard-kill-ring-save` |
| `M-'` | `line-to-top` |
| `M-+` / `M-]` | `enlarge-window` |
| `M--` / `M-[` | `shrink-window` |
| `M-←` / `M-→` | `previous-buffer` / `next-buffer` |
| `M-↑` / `M-↓` | `other-window-backward` / `other-window` |
| `C-x h` | `split-window-horizontally` |
| `C-x v` | `split-window-vertically` |
| `C-x d` | Insert date |
| `C-x t` | Insert time |
| `C-x o` | Open custom file |
| `C-x g` / `s-g` | GoldenDict lookup |
| `s-f` | `elisp-format-region` |
| `s-j` | `org-journal-list--start` |
| `F3` | `shell` |
| `F8` | `menu-bar-mode` |

### Dictionary Lookup

| Key | Command | Description |
| --- | --- | --- |
| `M-/` | `bing-dict-brief` | Look up word at point via Bing (minibuffer) |
| `M-\` | `youdao-dictionary-search-at-point-brief` | Look up word at point via Youdao (minibuffer) |
| `C-c d` | `osx-dictionary-search-word-at-point` | macOS Dictionary.app lookup |

---

## Installed Packages (ELPA)

| Package | Description |
| --- | --- |
| async | Asynchronous processing |
| auto-complete | Auto-completion framework |
| auto-save-buffers-enhanced | Auto-save buffers periodically |
| avk-emacs-themes | Color themes |
| beacon | Highlight cursor on scroll |
| better-defaults | Sensible Emacs defaults |
| bing-dict | Bing dictionary lookup |
| chinese-word-at-point | Chinese word detection at point |
| color-theme | Legacy color theme framework |
| color-theme-solarized | Solarized theme |
| dash | List manipulation library |
| decide | Decision-making helpers |
| elisp-format | Elisp code formatter |
| exec-path-from-shell | Inherit `$PATH` from login shell (macOS) |
| f | File manipulation library |
| goldendict | GoldenDict integration |
| helm | Incremental completion / narrowing framework |
| helm-core | Helm core library |
| helm-wordnet | WordNet lookup via Helm |
| html-check-frag | HTML fragment checker |
| names | Elisp namespaces |
| org-ehtml | Org-mode export to HTML |
| org-journal | Daily journaling in Org-mode |
| org-journal-list | Journal listing interface |
| osx-dictionary | macOS Dictionary.app integration |
| pdf-tools | PDF viewer |
| popup | Popup UI library |
| pos-tip | Tooltip at point |
| pyenv-mode | Python pyenv integration |
| pyenv-mode-auto | Auto-activate pyenv |
| pythonic | Python environment utilities |
| s | String manipulation library |
| tablist | Tabulated list extensions |
| web-beautify | HTML/CSS/JS beautifier |
| web-server | Emacs web server |
| wfnames | File name utilities |
| wiki-summary | Wikipedia summary lookup |
| youdao-dictionary | Youdao dictionary lookup |

### Site-lisp (manual)

| Package | Description |
| --- | --- |
| unicad | Universal charset auto-detection |
| edit-server | Chrome "Edit with Emacs" extension server |
| canji5 | Cangjie 5 input method |

---

## Package Archives

```elisp
(setq package-archives
      '(("gnu"       . "https://elpa.gnu.org/packages/")
        ("marmalade" . "https://marmalade-repo.org/packages/")
        ("melpa"     . "https://melpa.org/packages/")))
```

---

## Dictionary / Translation Setup

Three dictionary tools are configured:

1. **bing-dict** — English ↔ Chinese via Bing. No API key needed.
2. **youdao-dictionary** — Youdao translation API. Requires an API key stored in `~/.authinfo`:
   ```
   machine openapi.youdao.com login <APP_KEY> password <SECRET_KEY>
   ```
   The package reads credentials automatically via `auth-source`.
3. **osx-dictionary** — Queries macOS built-in Dictionary.app. No setup needed.

---

## Installation

```sh
# Clone the repo
git clone https://github.com/yuleshow/yuleshow-dotemacs.git ~/.emacs.d

# Symlink the init file
ln -s ~/.emacs.d/new.emacs ~/.emacs

# (Optional) Set up Youdao API credentials
echo "machine openapi.youdao.com login YOUR_APP_KEY password YOUR_SECRET_KEY" >> ~/.authinfo
chmod 600 ~/.authinfo

# Launch Emacs — packages install automatically via ELPA
emacs
```

---

## License

Personal configuration. Use at your own discretion.
