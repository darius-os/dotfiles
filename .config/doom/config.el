;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq doom-localleader-key ",")
(setq user-full-name "Darius"
      user-mail-address "dory.khawand@gmai.com")

(setq doom-font (font-spec :family "Fira Code Medium" :size 16)
      doom-big-font (font-spec :family "Fira Code Medium" :size 24)
      ;doom-variable-pitch-font (font-spec :family "Overpass" :size 18)
      ;doom-serif-font (font-spec :family "IBM Plex Mono" :weight 'light)
      +doom-dashboard-banner-file (expand-file-name "emacs.png" doom-private-dir)
      doom-fallback-buffer-name "► Doom" +doom-dashboard--last-cwd "► Doom"
      doom-theme 'doom-spacegrey
      doom-modeline-project-detection 'projectile
      doom-modeline-buffer-file-name-style 'auto
      doom-modeline-buffer-encoding nil
      doom-modeline-icon (display-graphic-p)
      doom-modeline-major-mode-icon t
      doom-modeline-major-mode-color-icon t
      doom-modeline-buffer-state-icon t
      doom-modeline-enable-word-count nil
      doom-modeline-persp-icon t)
      ;doom-modeline-number-limit 50)

(setq read-process-output-max (* 1024 1024))
(setq font-lock-maximum-decoration 3)

(global-set-key (kbd "<M-f9>") 'resize-window)
(global-set-key (kbd "<C-f9>") 'helpful-variable)
(global-set-key (kbd "<C-f11>") 'geiser-repl-clear-buffer)
(global-set-key (kbd "<M-f11>") 'list-flycheck-errors)

(require 'resize-window)
(if (eq initial-window-system 'x)
    (toggle-frame-maximized)
  (toggle-frame-fullscreen))

(setq projectile-globally-ignored-directories (append '("3.8"
                                                        ".mypy_cache"
                                                        ".git"
                                                        ".cache"
                                                        ".node_modules")))



(setq company-idle-delay 0.1
      company-minimum-prefix-length 2
      company-tooltip-minimum-width 10
      company-box-doc-delay 3
      company-tooltip-limit 10
      company-box-frame-behavior 'point
      company-box-max-candidates 5
      company-box-backends-colors nil
      company-box-tooltip-minimum-width 60)

(after! lsp-python-ms
  (set-lsp-priority! 'mspyls 1))

(setq prettify-symbols-unprettify-at-point 'right-edge)

;(setq flycheck-python-mypy-cache-dir "~/.cache/mypy"
;      flycheck-python-mypy-executable "/usr/bin/mypy"
;      flycheck-python-mypy-config "mypy.ini")

(add-hook
 'python-mode-hook
 (lambda ()
   (mapc (lambda (pair) (push pair prettify-symbols-alist))
         '(
           ("def"       .      ?ℱ)
           ("=="        .      ?≡)
           ("not in"    .      ?∉)
           ("return"    .      ?⟼)
           ("yield"     .      ?⟻)
           ("not"       .      ?￢)
           ("or"        .      ?∨)
           ("and"       .      ?∧)
           ("def"       .      ?ƒ)
           ("->"        .      ?⟶)
           (">>"        .      ?↠)
           ("<<"        .      ?↞)
           ("|="        .      ?⊨)
           ("!="        .      ?≠)))))

(setq flycheck-display-errors-delay 0.7)
(setq flycheck-check-syntax-automatically '(save mode-enabled))

(after! haskell-mode
  (remove-hook! flycheck-mode #'flycheck-popup-tip-show-popup))

(delete-selection-mode 1)
(setq-default custom-file (expand-file-name ".custom.el" doom-private-dir))
(when (file-exists-p custom-file)
  (load custom-file))

;(after! evil (evil-escape-mode nil))
(setq-default delete-by-moving-to-trash t
              tab-width 4
              window-combination-resize t
              x-stretch-cursor t
              history-length 1000)

(setq undo-limit 1000
      evil-want-fine-undo t
      auto-save-default t
      inhibit-compacting-font-caches t)

(setq rainbow-delimiters-max-face-count 5
      display-line-numbers-type `relative)

(setq +ivy-buffer-preview t)

(setq org-directory "~/org/"
      org-archive-location (concat "%s_archive_" (format-time-string "%Y" (current-time)) "::")
      org-src-preserve-indentation t
      org-src-tab-acts-natively t
      org-src-window-setup 'current-window)

(after! org (setq org-hide-emphasis-markers t
                  org-hide-leading-stars t
                  org-list-demote-modify-bullet '(("+" . "-") ("1." . "a.") ("-" . "+"))))

(add-hook 'org-mode-hook #'font-lock-debug-fontify t)

(require 'eval-in-repl)
(require 'racket-xp)
(require 'racket-mode)
(define-key racket-mode-map (kbd "<M-R-r>") 'racket-run)
(define-key racket-mode-map (kbd "<M-return>") 'racket-run)


(unless (equal "Battery status not available"
               (battery))
  (display-battery-mode 1))

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

;(add-hook 'racket-mode-hook      #'racket-unicode-input-method-enable)
;(add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)
;(add-hook 'racket-xp-mode-hook (lambda () (remove-hook 'pre-redisplay-functions))
;                         #'racket-xp-pre-redisplay
;                         t)
;(require 'eval-in-repl-ielm)
;(setq eir-repl-placement 'right
;      eir-jump-after-eval t
;      eir-ielm-eval-in-current-buffer t)
;(define-key emacs-lisp-mode-map (kbd "<M-return>") 'eir-eval-in-ielm)
;(define-key lisp-interaction-mode-map (kbd "<M-return>") 'eir-eval-in-ielm)

;(defvar haskell-font-lock-symbols)
;(setq haskell-font-lock-symbols t)
;(setq haskell-doc-prettify-types t)
;(require 'eval-in-repl-geiser)
;(add-hook 'geiser-mode-hook
;          '(lambda ()
;             (local-set-key (kbd "<M-return>") 'eir-eval-in-geiser))
;(setq +ligatures-in-modes '(python-mode
;                            haskell-mode
;                            web-mode
;                            javascript-mode
;                            elisp-mode))
;      +ligatures-extras-in-modes t)
;(treemacs-resize-icons 18)
;(treemacs--set-width 25)
;(setq geiser-active-implementations '(chez)
;      geiser-chez-binary "chezscheme"))
;      geiser-racket--prompt-regexp "<pkgs>.*> \\|\\(r6r\\|scheme\\|mzscheme\\|racket\\|gracket\\)@[^ ]*> ")
;(map! :after python
;      :map python-mode-map
;      :localleader
;      (:desc "eval" :prefix "e"
;       :desc "line or region" :n "e" #'jupyter-eval-line-or-region
;        :desc "defun" :n "d" #'jupyter-eval-defun
;       :desc "buffer" :n "b" #'jupyter-eval-buffer))
;
;(unless (equal "Battery status not available"
;               (battery))
;  (display-battery-mode 1))            
;(add-to-list 'load-path "~/.config/doom/site-lisp/SuperCollider")
;(require 'w3m)
;(require 'sclang)
;(add-hook 'sh-mode-hook
;          '(lambda ()
;             (local-set-key (kbd "M-<return>") 'eir-eval-in-shell)))
;(after! evil-org
;  (setq org-babel-default-header-args:jupyter-python '((:async . "yes")
;                                                       (:pandoc t)
;                                                       (:kernel . "python3")))
