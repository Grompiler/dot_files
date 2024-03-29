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
(setq doom-font (font-spec :family "JetBrains Mono" :size 21 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "JetBrains Mono" :size 21))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:

;; (setq doom-theme 'doom-dracula)
;; (setq doom-theme 'doom-horizon)
;; (setq doom-theme 'doom-earl-grey)
(setq doom-theme 'doom-gruvbox)

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
;; Evil goggles
(use-package evil-goggles
  :ensure t
  :config
  (evil-goggles-mode)
  (evil-goggles-use-diff-refine-faces))

(setq evil-goggles-enable-delete t)

;; Font colors

(custom-set-faces

 '(evil-goggles-yank-face ((t (:background "medium sea green"))))
 ;; '(default ((t (:foreground "light gray"))))
 ;; '(font-lock-variable-name-face ((t (:foreground "light grey"))))
 ;; '(font-lock-builtin-face ((t (:foreground "#bd93f9"))))
 '(fringe ((t (:foreground "dim gray"))))
 '(font-lock-negation-char-face ((t (:weight normal))))
 ;;dracula '(font-lock-negation-char-face ((t (:foreground "#bd93f9" :weight normal))))
 ;; '(font-lock-type-face ((t (:foreground "#88eeff"))))
 ;;dracula '(tree-sitter-hl-face:method\.call ((t (:inherit tree-sitter-hl-face:method\.call :forground "#50fa7b" :weight normal :slant normal))))
 '(tree-sitter-hl-face:method\.call ((t (:inherit tree-sitter-hl-face:method\.call :weight normal :slant normal))))
 ;;dracula '(tree-sitter-hl-face:operator ((t (:inherit tree-sitter-hl-face:keyword :foreground "#ffbb66"))))
 '(tree-sitter-hl-face:operator ((t (:inherit tree-sitter-hl-face:keyword))))
 ;;dracula '(tree-sitter-hl-face:function\.call ((t (:inherit tree-sitter-hl-face:function\.call :foreground "#50fa7b" :weight normal :slant normal))))
 '(tree-sitter-hl-face:function\.call ((t (:inherit tree-sitter-hl-face:function\.call :weight normal :slant normal))))
 '(tree-sitter-hl-face:property ((t (:inherit font-lock-constant-face :slant normal))))
 ;;dracula '(font-lock-preprocessor-face ((t (:foreground "#50fa7b" :weight normal)))))
 '(font-lock-preprocessor-face ((t (:weight normal)))))

;; Magit
;; (global-display-line-numbers-mode t)
;; (setq magit-section-disable-line-numbers nil)
(custom-set-faces
 '(diff-refine-added ((t (:inherit diff-added :background "#50fa7b" :foreground "nil" :inverse-video t :weight ultrabold))))
 '(magit-diff-added ((t (:extend t :foreground "#40c862" :background nil))))
 '(magit-diff-added-highlight ((t (:extend t :foreground "#40c862" :background nil))))

 '(diff-refine-removed ((t (:inherit diff-removed :background "#ff5555" :foreground "nil" :inverse-video t :weight ultrabold))))
 '(magit-diff-removed ((t (:extend t :foreground "#cc4444" :background nil))))
 '(magit-diff-removed-highlight ((t (:extend t :foreground "#cc4444" :background nil)))))


;; evil-snipe
(setq evil-snipe-spillover-scope 'visible)

;; Which Key
(setq which-key-idle-delay 3)
(which-key-setup-minibuffer)

;; Org Mode
(after! org
  (map! :map org-mode-map
        :n "C-j" "Lzz"
        :n "C-k" "Hzz"))

;; Modeline
(after! doom-modeline
      (doom-modeline-def-modeline 'main
        '(bar modals vcs matches buffer-info remote-host buffer-position parrot selection-info)
        '(misc-info minor-modes checker input-method buffer-encoding major-mode process "  ")))

(setq doom-modeline-buffer-encoding t)
(setq doom-modeline-indent-info t)
(setq doom-modeline-height 36)
(setq doom-modeline-vcs-max-length 40)

;; Shell
(setq-default shell-file-name "/bin/fish")

;; Vterm
(setq-default vterm-timer-delay 0.01)

;; Tabs
(setq centaur-tabs-height 32)
(setq centaur-tabs-label-fixed-length 10)
(setq centaur-tabs-set-bar 'over)

;; always indent to 4 spaces in shift mode
(add-hook 'buffer-list-update-hook (lambda () (setq evil-shift-width 4)))

;; (setq tab-width 4)
;; (setq evil-shift-width 4)
;; (setq-default doom/set-indent-width 4)
(setq-default indent-tabs-mode nil)

;; re-implement indent to always be 4 spaces in insert mode
(defun custom/dumb-indent ()
    "Insert spaces 4 tab-width."
    (interactive)
        (let* ((movement (% (current-column) 4))
                (spaces (if (= 0 movement) 4 (- 4 movement))))
        (insert (make-string spaces ? ))))
(map! :i "TAB" #'custom/dumb-indent)

;; customize lsp/flycheck
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
(setq lsp-eldoc-enable-hover nil)

;; (setq lsp-enable-file-watchers nil)

(setq evil-want-fine-undo t)

;; Unbind general-override-mode-map
(map! :map general-override-mode-map
      :leader
      "c d" nil)
(map! :map general-override-mode-map
      :leader
      "c D" nil)
(map! :map general-override-mode-map
      :leader
      "c E" nil)
(map! :map general-override-mode-map
      :leader
      "c J" nil)
(map! :map general-override-mode-map
      :leader
      "c w" nil)
(map! :map general-override-mode-map
      :leader
      "c W" nil)
(map! :map general-override-mode-map
      :leader
      "c a" nil)
(map! :map general-override-mode-map
      :leader
      "c f" nil)
(map! :map general-override-mode-map
      :leader
      "c i" nil)
(map! :map general-override-mode-map
      :leader
      "c j" nil)
(map! :map general-override-mode-map
      :leader
      "c l" nil)
(map! :map general-override-mode-map
      :leader
      "c o" nil)
(map! :map general-override-mode-map
      :leader
      "c s" nil)
(map! :map general-override-mode-map
      :leader
      "c x" nil)
(map! :map general-override-mode-map
      :leader
      "c e" nil)
(map! :map general-override-mode-map
      :leader
      "c k" nil)
(map! :map general-override-mode-map
      :leader
      "c r" nil)
(map! :map general-override-mode-map
      :leader
      "c c" nil)
(map! :map general-override-mode-map
      :leader
      "c C" nil)
(map! :map general-override-mode-map
      :leader
      "c t" nil)

;; Change general-override-mode-map
(map! :map general-override-mode-map
      :leader
      "c ;" 'compile)
(map! :map general-override-mode-map
      :leader
      "c :" 'recompile)
(map! :map general-override-mode-map
      :leader
      "k k" 'kill-current-buffer)

;; Change evil-state-map
(map! :map evil-normal-state-map
    "g d" 'evil-goto-definition)

(map! :map evil-visual-state-map
    "g d" 'evil-goto-definition)

;; Compilation buffer
(map! :map compilation-mode-map
      :n
      "C-j" (kbd "Lzz"))
(map! :map compilation-mode-map
      :n
      "C-k" (kbd "Hzz"))
(map! :map compilation-mode-map
      "TAB" nil)

;; Rust
(add-hook 'rustic-mode-hook 'yas-minor-mode)

(defvar rustic-build-process-name "rustic-cargo-build-process"
  "Process name for build processes.")

(defvar rustic-build-buffer-name "*cargo-build*"
  "Buffer name for build buffers.")

(defvar rustic-build-arguments ""
  "Holds arguments for 'cargo build', similar to `compilation-arguments`.")

(define-derived-mode rustic-cargo-build-mode rustic-compilation-mode "cargo-build"
  :group 'rustic)

;;;###autoload
(defun custom/rustic-cargo-build (&optional arg)
  "Run 'cargo build'.

    If ARG is not nil, use value as argument and store it in
    `rustic-build-arguments'.  When calling this function from
    `rustic-popup-mode', always use the value of
    `rustic-build-arguments'."
    (interactive "P")
    (rustic-cargo-build-command
    (cond (arg
        (setq rustic-build-arguments (read-from-minibuffer "Cargo build arguments: " rustic-build-arguments)))
        (t ""))))

(defun rustic-cargo-build-command (&optional build-args)
    "Start compilation process for 'cargo build' with optional build-ARGS."
    (rustic-compilation-process-live)
    (let* ((command (list (rustic-cargo-bin) "build"))
            (c (append command (split-string (if build-args build-args ""))))
            (buf rustic-build-buffer-name)
            (proc rustic-build-process-name)
            (mode 'rustic-cargo-build-mode))
        (rustic-compilation c (list :buffer buf :process proc :mode mode))))

;;;###autoload
(defun custom/rustic-cargo-tarpaulin (&optional arg)
  "Run 'cargo tarpaulin'."

    (interactive "P")
    (custom/cargo-tarpaulin-build-command)
    (cond (arg
        (setq rustic-test-arguments (read-from-minibuffer "Cargo tarpaulin arguments: " )))
        (t "")))

(defun custom/cargo-tarpaulin-build-command (&optional _arg)
    "Start compilation process for 'cargo tarpaulin'."
    (rustic-compilation-process-live)
    (let* ((command (list (rustic-cargo-bin) "tarpaulin"))
            (c (append command (split-string (if "" "" ""))))
            (buf rustic-test-buffer-name)
            (proc rustic-test-process-name)
            (mode 'rustic-cargo-test-mode))
        (rustic-compilation c (list :buffer buf :process proc :mode mode))))

;;;###autoload
(defun custom/rustic-cargo-tarpaulin-html (&optional arg)
  "Run 'cargo tarpaulin -o html'."

    (interactive "P")
    (custom/cargo-tarpaulin-html-build-command
    (cond (arg
        (setq rustic-test-arguments (read-from-minibuffer "Cargo tarpaulin html arguments: " )))
        (t ""))))
(defun custom/cargo-tarpaulin-html-build-command (&optional _arg)
    "Start compilation process for 'cargo tarpaulin'."
    (rustic-compilation-process-live)
    (let* ((command (list (rustic-cargo-bin) "tarpaulin"))
            (c (append command (split-string (if "-o html" "-o html" ""))))
            (buf rustic-test-buffer-name)
            (proc rustic-test-process-name)
            (mode 'rustic-cargo-test-mode))
        (rustic-compilation c (list :buffer buf :process proc :mode mode))))

(when (fboundp 'rustic-mode)
  (defun rust-major-config ()
    "For use in `rust-mode-hook'."
    (setq rustic-mode-map (make-sparse-keymap))
    (map! :map rustic-mode-map
        :leader
        :desc "cargo build"
        "c c" 'custom/rustic-cargo-build)
    (map! :map rustic-mode-map
        :leader
        :desc "cargo run"
        "c r" 'rustic-cargo-run)
    (map! :map rustic-mode-map
        :leader
        :desc "cargo check"
        "c k" 'rustic-cargo-check)
    (map! :map rustic-mode-map
        :leader
        :desc "cargo clippy"
        "c K" 'rustic-cargo-clippy)
    (map! :map rustic-mode-map
        :leader
        :desc "cargo test"
        "c t" 'rustic-cargo-test)
    (map! :map rustic-mode-map
        :leader
        :desc "cargo test coverage"
        "c T" 'custom/rustic-cargo-tarpaulin)
    (map! :map rustic-mode-map
        :leader
        :desc "cargo test coverage html"
        "c h" 'custom/rustic-cargo-tarpaulin-html)
    (map! :map rustic-mode-map
        :leader
        :desc "cargo expand"
        "c e" 'rustic-cargo-expand)
    )
  (add-hook 'rustic-mode-hook 'rust-major-config))

;; Elm
(remove-hook 'elm-mode-hook 'elm-indent-mode)
(when (fboundp 'elm-mode)
  (defun elm-major-config ()
    "For use in `elm-mode-hook'."
    (setq elm-mode-map (make-sparse-keymap))
    (map! :map elm-mode-map
        :leader
        :desc "elm compile buffer"
        "c c" 'elm-compile-buffer)
    (map! :map elm-mode-map
        :leader
        :desc "elm test project"
        "c t" 'elm-test-project)
    (map! :map elm-mode-map
        :leader
        :desc "elm compile main"
        "c m" 'elm-compile-main)
    )
  (add-hook 'elm-mode-hook 'elm-major-config))

;; Web mode https://stackoverflow.com/questions/51117964/how-to-remove-an-item-from-auto-mode-alist-emacs
(add-to-list 'auto-mode-alist '("\\.[jt]s.\\'" . typescript-mode))

;; Dired
(setq delete-by-moving-to-trash t
      trash-directory "~/.local/share/Trash/files/")

;; Case insensitive search
;; Search for words not symbols
(custom-set-variables
 '(evil-ex-search-case 'insensitive)
 '(evil-symbol-word-search nil))

;;Cursor
(setq evil-normal-state-cursor '(box "medium sea green")
    evil-insert-state-cursor '(bar "medium sea green")
    evil-visual-state-cursor '(hollow "medium sea green"))

;; Consider _ as part of the word
(modify-syntax-entry ?_ "w")

;; Keybindings
(global-set-key (kbd "C-j") (kbd "Lzz"))
(global-set-key (kbd "C-k") (kbd "Hzz"))
(global-set-key (kbd "C-h") (kbd "^"))
(global-set-key (kbd "C-l") (kbd "$"))


;; Functions
;; evil-ex-search
(advice-add 'evil-ex-search-next :after
    (lambda (&rest _x) (evil-scroll-line-to-center (line-number-at-pos))))
(advice-add 'evil-ex-search-previous :after
    (lambda (&rest _x) (evil-scroll-line-to-center (line-number-at-pos))))

;; compilation mode
(advice-add 'compilation-next-error :after
    (lambda (&rest _x) (evil-scroll-line-to-center (line-number-at-pos))))
(advice-add 'compilation-previous-error :after
    (lambda (&rest _x) (evil-scroll-line-to-center (line-number-at-pos))))

;; in out motions center
(advice-add 'better-jumper-jump-forward :after
    (lambda (&rest _x) (evil-scroll-line-to-center (line-number-at-pos))))
(advice-add 'better-jumper-jump-backward :after
    (lambda (&rest _x) (evil-scroll-line-to-center (line-number-at-pos))))


;; Mappings
;; TAB completion
;; Enter does enter, it should not complete
(with-eval-after-load 'company
    (define-key company-active-map (kbd "<tab>") 'company-complete-selection)
    (define-key company-active-map [return] 'newline)
    (define-key company-active-map (kbd "RET") 'newline))


(setq company-backends '(company-dabbrev-code))
(setq company-dabbrev-other-buffers nil)
(map! :leader
     :desc "Auto-completion"
     "t a" #'+company/toggle-auto-completion)

;; Projects
(map! :leader
    :desc "Hide other projects"
    "p h" #'treemacs-display-current-project-exclusively)


;; Jumps
(setq avy-background nil)

(map! :leader
    (:prefix ("j" . "jump")
    :desc "Go to line"
    "l" #'avy-goto-line))
(map! :leader
    (:prefix ("j" . "jump")
    :desc "Go to end of line"
    "e" #'avy-goto-end-of-line))
(map! :leader
    (:prefix ("j" . "jump")
    :desc "Go to word (1 char input)"
    "w" #'avy-goto-word-1))
(map! :leader
    (:prefix ("j" . "jump")
    :desc "Go to word (1 char input)"
    "j" #'avy-goto-word-1))

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

;; fzf
;; (map! :leader
;;     "SPC" #'fzf-find-file)


;; Split
(map! :leader
    (:desc "Split window vertically"
    "w/" #'evil-window-vsplit))

(map! :leader
    (:desc "Split window horizontally"
    "w-" #'evil-window-split))

;; Workspace
(map! :leader
    (:desc "Delete workspace"
    "Wd" #'+workspace/delete))

;; Switch buffers
(map! :leader
    (:desc "Last buffer"
    "TAB" #'evil-switch-to-windows-last-buffer))

(map! :leader
    (:desc "Toggle comment"
    ";" #'evilnc-comment-or-uncomment-lines))

;; change indentation style
(map! :leader
    (:prefix ("f i" . "Indentation style")
    :desc "Convert selection to spaces"
    "s" #'untabify))

(map! :leader
    (:prefix ("f i" . "Indentation style")
    :desc "Convert selection to tabs"
    "t" #'tabify))

;; git refresh branch
(map! :leader
      (:desc "Update buffer's branch"
       "g ;" #'vc-refresh-state))

;; others
(map! :n "C-r" nil)
(map! :n "U" #'evil-redo)

(map! :n "o" #'+default/newline-below)
(map! :n "O" #'+default/newline-above)

;; re-bind (unbind) C-f and C-u
(map! :i "C-f" (kbd ""))
(map! :i "C-u" (kbd ""))
(map! :n "C-f" (kbd ""))
(map! :n "C-u" (kbd ""))
(map! :v "C-f" (kbd ""))
(map! :v "C-u" (kbd ""))

;; Git
(map! :leader
        (:prefix ("j" . "Jump")
        :desc "Next Change"
        "c" #'+vc-gutter/next-hunk))

(map! :leader
        (:prefix ("j" . "Jump")
        :desc "Previous Change"
        "C" #'+vc-gutter/previous-hunk))

(map! :leader
        (:prefix ("g m" . "Merge conflict")
        :desc "Next"
        "j" #'smerge-next))

(map! :leader
        (:prefix ("g m" . "Merge conflict")
        :desc "Previous"
        "k" #'smerge-prev))

(map! :leader
        (:prefix ("g m" . "Merge conflict")
        :desc "Next"
        "n" #'smerge-next))

(map! :leader
        (:prefix ("g m" . "Merge conflict")
        :desc "Previous"
        "p" #'smerge-prev))

(map! :leader
        (:prefix ("g m" . "Merge conflict")
        :desc "Accept all"
        "a" #'smerge-keep-all))

(map! :leader
        (:prefix ("g m" . "Merge conflict")
        :desc "Accept current"
        "c" #'smerge-keep-current))

(map! :leader
        (:prefix ("g m" . "Merge conflict")
        :desc "Accept base"
        "b" #'smerge-keep-base))

(map! :leader
        (:prefix ("g m" . "Merge conflict")
        :desc "Accept upper"
        "u" #'smerge-keep-upper))

(map! :leader
        (:prefix ("g m" . "Merge conflict")
        :desc "Accept lower"
        "l" #'smerge-keep-lower))


;; re-map those, monkey patching global-set-key
(map! :n "C-j" (kbd "Lzz"))
(map! :n "C-k" (kbd "Hzz"))
(map! :n "C-h" (kbd "^"))
(map! :n "C-l" (kbd "$"))

;; re-implement backward kill word
(defun custom/backward-kill-word ()
    "Removes word under cursor when word is valid, otherwise removes char under cursor"
    (interactive)
    (if (looking-back "[a-zA-Z0-9_]")
        ;; delete word if char behind cursor matches the above regex
        (backward-kill-word 1)
        ;; otherwise, just delete one char/all spaces
        (backward-delete-char 1)
        ;; I am not sure about why this "if" is needed with my limited knowledge of elisp, but it works
        (if (looking-back "\s")
            (while (looking-back "\s")
                (backward-delete-char 1)
            )
        )
    )
)
(global-set-key  [C-backspace] 'custom/backward-kill-word)


;; Simpler dashboard
(defun doom-dashboard-draw-ascii-banner-fn ()
  (let* ((banner
          '("                                   E M A C S                                   "))
         (longest-line (apply #'max (mapcar #'length banner))))
    (put-text-property
     (point)
     (dolist (line banner (point))
       (insert (+doom-dashboard--center
                +doom-dashboard--width
                (concat
                 line (make-string (max 0 (- longest-line (length line)))
                                   32)))
               "\n"))
     'face 'doom-dashboard-banner)))
