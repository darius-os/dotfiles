;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq doom-localleader-key ",")
(setq user-full-name "Darius"
      user-mail-address "do.kh@protonmail.com")

(setq doom-font (font-spec :family "Fira Code Medium" :size 16)
      doom-big-font (font-spec :family "Fira Code Medium" :size 20)
      ;doom-variable-pitch-font (font-spec :family "Overpass" :size 18)
      doom-serif-font (font-spec :family "IBM Plex Mono" :weight 'light)
      +doom-dashboard-banner-file (expand-file-name "emacs.png" doom-private-dir)
      +doom-dashboard-name "λ Home"
      doom-fallback-buffer-name "► Doom" +doom-dashboard-name "► Doom"
      doom-theme 'doom-tomorrow-night
      doom-modeline-project-detection 'project
      doom-modeline-buffer-file-name-style 'auto
      doom-modeline-icon (display-graphic-p)
      doom-modeline-major-mode-icon t
      doom-modeline-major-mode-color-icon t
      doom-modeline-buffer-state-icon t
      doom-modeline-enable-word-count t
      doom-modeline-buffer-encoding t
      doom-modeline-persp-icon t
      doom-modeline-number-limit 50)

(setq-default explicit-shell-file-name "/usr/bin/sh")
(setq global-prettify-symbols-mode t)
(setq font-lock-maximum-decoration 3)

(global-set-key (kbd "<M-f9>") 'resize-window)
(global-set-key (kbd "<C-f9>") 'helpful-variable)
(global-set-key (kbd "<C-f11>") 'geiser-repl-clear-buffer)
(global-set-key (kbd "<M-f11>") 'list-flycheck-errors)

(if (eq initial-window-system 'x)
    (toggle-frame-maximized)
  (toggle-frame-fullscreen))

(require 'resize-window)

(setq company-idle-delay 0.4
      company-minimum-prefix-length 2
      company-tooltip-align-annotations t
      company-show-numbers t
      company-require-match nil)

(setq python-shell-virtualenv-path "~/.local/share/python-venv/pymacs/")
(setq +python-ipython-repl-args '("-i" "--simple-prompt" "--no-color-info"))
(setq +python-jupyter-repl-args '("--simple-prompt"))

(after! lsp-python-ms
  (set-lsp-priority! 'mspyls 1))

(setq flycheck-popup-tip-error-prefix "❎")
(setq flycheck-display-errors-delay 0.7)
(setq flymake-no-changes-timeout nil)
(setq flycheck-check-syntax-automatically '(save mode-enabled))


;(require 'company-ghci)
;(push 'company-ghci company-backends)
;(add-hook 'haskell-mode-hook 'company-mode)
;(add-hook 'haskell-mode-hook 'dante-mode)
;(add-hook 'haskell-interactive-mode-hook 'company-mode)

(defvar haskell-font-lock-symbols)
(setq haskell-font-lock-symbols t)
(setq haskell-mode-stylish-haskell-path "~/.local/bin/stylish-haskell")
(setq haskell-doc-prettify-types t)

(delete-selection-mode 1)
(setq-default custom-file (expand-file-name ".custom.el" doom-private-dir))
(when (file-exists-p custom-file)
  (load custom-file))

(after! evil (evil-escape-mode nil))
(setq-default delete-by-moving-to-trash t
              tab-width 4
              window-combination-resize t
              x-stretch-cursor t
              history-length 10000)

(setq undo-limit 10000
      evil-want-fine-undo t
      auto-save-default t
      inhibit-compacting-font-caches t)

(setq rainbow-delimiters-max-face-count 5
      display-line-numbers-type `relative)

(setq +ivy-buffer-preview t)

(setq org-directory "~/org/"
      org-archive-location (concat "%s_archive_" (format-time-string "%Y" (current-time)) "::")
      org-src-fontify-natively t
      org-src-preserve-indentation t
      org-src-tab-acts-natively t
      org-src-window-setup 'current-window)


(treemacs-resize-icons 18)
(treemacs--set-width 25)

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(let ((ansi-color-apply-face-function
       (lambda (beg end face)
         (when face
           (put-text-property beg end 'face face)))))
  (ansi-color-apply-on-region (point-min) (point-max)))

(setq geiser-active-implementations '(chez)
      geiser-chez-binary "chezscheme"
      geiser-racket--prompt-regexp "<pkgs>.*> \\|\\(r6r\\|scheme\\|mzscheme\\|racket\\|gracket\\)@[^ ]*> ")

(require 'eval-in-repl)
(require 'racket-xp)
(require 'racket-mode)
(require 'eval-in-repl-ielm)
(setq eir-repl-placement 'right
      eir-jump-after-eval t
      eir-ielm-eval-in-current-buffer t)

(require 'eval-in-repl-geiser)

(define-key emacs-lisp-mode-map (kbd "<M-return>") 'eir-eval-in-ielm)
(define-key lisp-interaction-mode-map (kbd "<M-return>") 'eir-eval-in-ielm)
(define-key racket-mode-map (kbd "<M-R-r>") 'racket-run)
(define-key racket-mode-map (kbd "<M-return>") 'racket-run)

(add-hook 'geiser-mode-hook
          '(lambda ()
             (local-set-key (kbd "<M-return>") 'eir-eval-in-geiser)))

(add-hook 'racket-mode-hook      #'racket-unicode-input-method-enable)
(add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)
(add-hook 'racket-xp-mode-hook (lambda () (remove-hook 'pre-redisplay-functions))
                         #'racket-xp-pre-redisplay
                         t)

(custom-set-variables
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#0c0a20" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(custom-safe-themes
   '("7b3d184d2955990e4df1162aeff6bfb4e1c3e822368f0359e15e2974235d9fa8"
     "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf"
     "9efb2d10bfb38fe7cd4586afb3e644d082cbcdb7435f3d1e8dd9413cbe5e61fc"
     "9b01a258b57067426cc3c8155330b0381ae0d8dd41d5345b5eddac69f40d409b"
     "b5fff23b86b3fd2dd2cc86aa3b27ee91513adaefeaa75adc8af35a45ffb6c499"
     "2a749c20af891c16571527d07976bbcf2bf31819fa7d322942b73386019f4d58"
     "5b809c3eae60da2af8a8cfba4e9e04b4d608cb49584cb5998f6e4a1c87c057c4"
     "fe94e2e42ccaa9714dd0f83a5aa1efeef819e22c5774115a9984293af609fce7"
     "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e"
     "dde8c620311ea241c0b490af8e6f570fdd3b941d7bc209e55cd87884eb733b0e"
     "54cf3f8314ce89c4d7e20ae52f7ff0739efb458f4326a2ca075bf34bc0b4f499"
     "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93"
     "9b272154fb77a926f52f2756ed5872877ad8d73d018a426d44c6083d1ed972b1"
     "c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19"
     "730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601"
     "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b"
     "7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c"
     "1623aa627fecd5877246f48199b8e2856647c99c6acdab506173f9bb8b0a41ac"
     "6177ecbffb8f37756012c9ee9fd73fc043520836d254397566e37c6204118852"
     "82360e5f96244ce8cc6e765eeebe7788c2c5f3aeb96c1a765629c5c7937c0b5b"
     "912cac216b96560654f4f15a3a4d8ba47d9c604cbc3b04801e465fb67a0234f0"
     "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11"
     "bf387180109d222aee6bb089db48ed38403a1e330c9ec69fe1f52460a8936b66"
     default))

 '(fci-rule-color "#5B6268")
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))

 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(objed-cursor-color "#ff6c6b")
 '(pdf-view-midnight-colors (cons "#bbc2cf" "#282c34"))
 '(rustic-ansi-faces
   ["#282c34" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(vc-annotate-background "#282c34")
 '(vc-annotate-color-map
   (list
    (cons 20 "#98be65")
    (cons 40 "#b4be6c")
    (cons 60 "#d0be73")
    (cons 80 "#ECBE7B")
    (cons 100 "#e6ab6a")
    (cons 120 "#e09859")
    (cons 140 "#da8548")
    (cons 160 "#d38079")
    (cons 180 "#cc7cab")
    (cons 200 "#c678dd")
    (cons 220 "#d974b7")
    (cons 240 "#ec7091")
    (cons 260 "#ff6c6b")
    (cons 280 "#cf6162")
    (cons 300 "#9f585a")
    (cons 320 "#6f4e52")
    (cons 340 "#5B6268")
    (cons 360 "#5B6268")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces)

(add-to-list 'load-path "~/.config/doom/site-lisp/SuperCollider")
(require 'w3m)
(require 'sclang)

;;(require 'lsp)
;;(require 'lsp-haskell)
;;(add-hook haskell-mode-hook #'lsp)
;;(add-hook haskell-mode-hook #'lsp-haskell-set-formatter-brittany)
;;(setq haskell-process-path-cabal "~/.cabal/bin/cabal")
;;(setq lsp-haskell-process-path-hie "~/.local/bin/ghcide")
;;(setq lsp-haskell-process-args-hie '())
;      org-clock-out-remove-zero-time-clocks t
;      org-log-into-drawer t
;      org-agenda-start-day "-1d"
;      org-agenda-span 2
;      org-time-clocksum-format '(:hours "%d" :require-hours t :minutes ":%02d" :require-minutes t)
;      org-clock-in-switch-to-state "⚔ INPROCESS"
;      org-download-timestamp "%Y%m%d_%H%M%S")
;(global-pretty-mode t)
;(pretty-deactivate-groups
; '(:equality :ordering :ordering-double :ordering-triple
;             :arrows :arrows-twoheaded ;;:punctuation
;             :logic :sets)
;
;(pretty-activate-groups
; '(:sub-and-superscripts :greek :arithmetic-nary :arithmetic-double :arithmetic-triple
;   :equality :ordering :ordering-double :ordering-triple :parentheses
;   :arrows :arrows-twoheaded :arrows-tails :arrows-tails-double :punctuation
;   :logic :sets :subscripts :superscripts)
;
;(defun run-in-vterm (command)
;  "Execute string COMMAND in a new vterm."
;  (interactive
;   (list
;    (let* ((f (cond (buffer-file-name)
;                    ((eq major-mode 'dired-mode)
;                     (dired-get-filename nil t)
;           (filename (concat " " (shell-quote-argument (and f (file-relative-name f)))))
;      (read-shell-command "Terminal command: "
;                          (cons filename 0)
;                          (cons 'shell-command-history 1)
;                          (list filename)
;  (with-current-buffer (vterm (concat "*" command "*"))
;    (set-process-sentinel vterm--process #'run-in-vterm-kill)
;    (vterm-send-string command)
;    (vterm-send-return))
;    
;(defun eir-eval-in-shell2 ()
;  (interactive)
;  (let ((eir-jump-after-eval (not eir-jump-after-eval)))
;    (eir-eval-in-shell))

;(add-hook 'sh-mode-hook
;          '(lambda ()
;             (local-set-key (kbd "C-M-<return>") 'eir-eval-in-shell2)))
;
;(require 'pretty-mode)
;
;(defun geiser-save ()
;  (interactive))
;
;(add-hook 'sh-mode-hook
;          '(lambda ()
;             (local-set-key (kbd "M-<return>") 'eir-eval-in-shell)))
;(require 'repl-toggle)
;(require 'psci)
;(add-to-list 'rtog/mode-repl-alist '(purescript-mode . psci))
;(add-hook 'purescript-mode-hook 'inferior-psci-mode)
;(require 'psc-ide)

;(add-hook 'purescript-mode-hook
;  (lambda ()
;    (psc-ide-mode)
;    (company-mode)
;    (flycheck-mode)
;    (turn-on-purescript-indentation))

;(setq psc-ide-use-npm-bin t)

;(after! centaur-tabs
;  (centaur-tabs-mode -1)
;  (setq centaur-tabs-height 24
;        centaur-tabs-set-icons t
;        centaur-tabs-modified-marker "×"
;        centaur-tabs-close-button "×"
;        centaur-tabs-set-bar 'above
;        centaur-tabs-gray-out-icons 'buffer
;
;  (centaur-tabs-change-fonts "Fira Code Retina" 100))
;(add-hook 'geiser-mode-hook
;          '(lambda ()
;             (local-set-key (kbd "<M-return>") 'eir-eval-in-geiser)))
