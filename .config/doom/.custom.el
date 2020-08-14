(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#1d1f21" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(custom-safe-themes
   '("632694fd8a835e85bcc8b7bb5c1df1a0164689bc6009864faed38a9142b97057" "e2acbf379aa541e07373395b977a99c878c30f20c3761aac23e9223345526bcc" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "3577ee091e1d318c49889574a31175970472f6f182a9789f1a3e9e4513641d86" "7b3d184d2955990e4df1162aeff6bfb4e1c3e822368f0359e15e2974235d9fa8" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "9efb2d10bfb38fe7cd4586afb3e644d082cbcdb7435f3d1e8dd9413cbe5e61fc" "9b01a258b57067426cc3c8155330b0381ae0d8dd41d5345b5eddac69f40d409b" "b5fff23b86b3fd2dd2cc86aa3b27ee91513adaefeaa75adc8af35a45ffb6c499" "2a749c20af891c16571527d07976bbcf2bf31819fa7d322942b73386019f4d58" "5b809c3eae60da2af8a8cfba4e9e04b4d608cb49584cb5998f6e4a1c87c057c4" "fe94e2e42ccaa9714dd0f83a5aa1efeef819e22c5774115a9984293af609fce7" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "dde8c620311ea241c0b490af8e6f570fdd3b941d7bc209e55cd87884eb733b0e" "54cf3f8314ce89c4d7e20ae52f7ff0739efb458f4326a2ca075bf34bc0b4f499" "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" "9b272154fb77a926f52f2756ed5872877ad8d73d018a426d44c6083d1ed972b1" "c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" "730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c" "1623aa627fecd5877246f48199b8e2856647c99c6acdab506173f9bb8b0a41ac" "6177ecbffb8f37756012c9ee9fd73fc043520836d254397566e37c6204118852" "82360e5f96244ce8cc6e765eeebe7788c2c5f3aeb96c1a765629c5c7937c0b5b" "912cac216b96560654f4f15a3a4d8ba47d9c604cbc3b04801e465fb67a0234f0" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "bf387180109d222aee6bb089db48ed38403a1e330c9ec69fe1f52460a8936b66" default))
 '(fci-rule-color "#5B6268")
 '(geiser-racket-extra-keywords
   '("provide" "require" "unless" "when" "with-handlers" "car" "cdr" "cons" "cadr" "caddr" "cadddr" "cdr" "cddr" "cdddr" "cddddr" "filter" "reduce"))
 '(geiser-repl-highlight-output-p t)
 '(global-prettify-symbols-mode nil)
 '(haskell-font-lock-keywords
   '("case" "class" "data" "default" "deriving" "do" "else" "if" "import" "in" "infix" "infixl" "infixr" "instance" "let" "module" "mdo" "newtype" "of" "rec" "pattern" "proc" "signature" "then" "type" "where" "_" "anyclass" "stock" "via" "take" "repeat" "null" "length" "filter" "sort" "zipWith" "cycle" "replicate" "reverse" "maxBound" "minBound" "drop" "takeWhile" "foldl" "foldr" "qualified" "print" "readFile" "mapM" "mapM_" "as" "liftM" "liftM1" "liftM2" "liftM3" "liftM4" "liftM5" "fmap" "succ" "sum" "map" "otherwise"))
 '(haskell-font-lock-symbols t)
 '(haskell-font-lock-symbols-alist
   '(("\\" . "λ")
     ("not" . "¬")
     ("<-" . "🡐")
     ("->" . "🡒")
     ("=>" . "⟹")
     ("empty" . "∅")
     ("==" . "≡")
     ("/=" . "≢")
     (">=" . "≥")
     ("<=" . "≤")
     ("!!" . "‼")
     ("&&" . "∧")
     ("||" . "∨")
     ("sqrt" . "√")
     ("undefined" . "⊥")
     ("pi" . "π")
     ("~>" . "⇝")
     ("-<" . "↢")
     ("::" . "∷")
     ("." "∘" haskell-font-lock-dot-is-not-composition)
     ("forall" . "∀")
     (">=>" . "↣")
     ("<=<" . "↢")
     ("<<<" . "⋘")
     (">>>" . "⋙")
     ("x" . "x")
     ("union" . "∪")
     ("intersect" . "∩")
     ("><" . "⋈")
     ("elem" . "∈")
     ("flip" . "∋")
     ("notElem" . "∉")
     ("++" . "⧺")
     ("+++" . "⧻")
     ("|||" . "⫴")
     ("<*>" . "⊛")
     ("/" . "÷")))
 '(haskell-interactive-prompt "λ >> ")
 '(haskell-mode-hook
   '(turn-on-haskell-unicode-input-method doom--setq-yas-indent-line-for-haskell-mode-h haskell-collapse-mode interactive-haskell-mode +lookup--init-haskell-mode-handlers-h turn-on-haskell-unicode-input-method))
 '(haskell-mode-stylish-haskell-path "stylish-haskell")
 '(haskell-stylish-on-save t)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(objed-cursor-color "#ff6c6b")
 '(pdf-view-midnight-colors (cons "#bbc2cf" "#282c34"))
 '(racket-show-functions '(racket-show-header-line))
 '(racket-xp-after-change-refresh-delay 3)
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
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(geiser-font-lock-repl-output ((t (:foreground "slate blue"))))
 '(geiser-font-lock-repl-prompt ((t (:inherit minibuffer-prompt :weight normal :family "Fira Code Retina"))))
 '(haskell-type-face ((t (:inherit font-lock-type-face :family "Fira Code Medium")))))
