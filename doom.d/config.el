;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Pierre"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
(setq doom-font (font-spec :family "JetBrains Mono" :size 17 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "JetBrains Mono" :size 17))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:

;; customize dracula theme in ~/.emacs.d/.local/straight/repos/themes/themes
;; (constants      green)
;; (methods        green)
;; (operators      green)
;; (type           cyan)
(setq doom-theme 'doom-dracula)

;; (setq bg1 nil) ;; terminal is ugly

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type `relative)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;


;; Custom packages

(use-package! tree-sitter
  :config
  (require 'tree-sitter-langs)
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))


;; Custom settings
;; Modeline
(after! doom-modeline
      (doom-modeline-def-modeline 'main
        '(bar modals vcs matches buffer-info remote-host buffer-position parrot selection-info)
        '(misc-info minor-modes checker input-method buffer-encoding major-mode process "  ")))

(setq doom-modeline-buffer-encoding t)
(setq doom-modeline-indent-info t)
(setq doom-modeline-height 36)
(setq doom-modeline-vcs-max-length 40)

;; Tabs
(setq centaur-tabs-height 32)
(setq centaur-tabs-label-fixed-length 10)
(setq centaur-tabs-set-bar 'over)

;;
(remove-hook 'doom-first-buffer-hook #'smartparens-global-mode)
(setq tab-width 4)
;; (setq doom/set-indent-width 4)

(custom-set-faces!
  '(flycheck-error :underline nil)
  '(flycheck-warning :underline nil)
  '(flycheck-info :underline nil))

(setq flycheck-mode-line-enable nil)
(setq flycheck-check-syntax-automatically '(mode-enabled save))
(setq scroll-margin 6)

;; (setq lsp-diagnostics-provider :none)
;; (setq lsp-ui-sideline-enable nil)
;; (setq lsp-enable-symbol-highlighting nil)
(setq lsp-lens-enable nil)
(setq lsp-modeline-diagnostics-enable nil)
(setq lsp-modeline-code-actions-enable nil)
(setq lsp-signature-auto-activate nil)

;; (setq lsp-enable-file-watchers nil)

;; Keybindings
(global-set-key (kbd "C-j") (kbd "Lzz"))
(global-set-key (kbd "C-k") (kbd "Hzz"))
(global-set-key (kbd "C-h") (kbd "^"))
(global-set-key (kbd "C-l") (kbd "$"))

;; Functions

(advice-add 'evil-ex-search-next :after
    (lambda (&rest _x) (evil-scroll-line-to-center (line-number-at-pos))))
(advice-add 'evil-ex-search-previous :after
    (lambda (&rest _x) (evil-scroll-line-to-center (line-number-at-pos))))

;; Mappings
;; TAB completion

(with-eval-after-load 'company
    (define-key company-active-map (kbd "<tab>") 'company-complete-selection))


;; Projects
(map! :leader
    :desc "Hide other projects"
    "p h" #'treemacs-display-current-project-exclusively)


;; Errors
(map! :leader
    (:prefix ("e" . "errors")
    :desc "Go to next error"
    "n" #'flycheck-next-error))
(map! :leader
    (:prefix ("e" . "errors")
    :desc "Go to previous error"
    "p" #'flycheck-previous-error))
(map! :leader
    (:prefix ("e" . "errors")
    :desc "Show errors list"
    "l" #'flycheck-list-errors))

;; Split
(map! :leader
    (:desc "Split window vertically"
    "w/" #'evil-window-vsplit))

(map! :leader
    (:desc "Split window horizontally"
    "w-" #'evil-window-split))

;; Switch buffers
(map! :leader
    (:desc "Last buffer"
    "TAB" #'evil-switch-to-windows-last-buffer))

(map! :leader
    (:desc "Toggle comment"
    ";" #'evilnc-comment-or-uncomment-lines))

;; git refresh branch
(map! :leader
      (:desc "Update buffer's branch"
       "g ;" #'vc-refresh-state))

;; others
(map! :n "C-d" #'evil-delete-buffer)
(map! :n "C-r" nil)
(map! :n "U" #'evil-redo)

(map! :i "TAB" #'doom/dumb-indent)

(map! :n "o" #'+default/newline-below)
(map! :n "O" #'+default/newline-above)
