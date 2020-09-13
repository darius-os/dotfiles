;;; init.el -*- lexical-binding: t; -*-


(setq locale-coding-system 'utf-8)
(setq-default buffer-file-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8)


(doom! :input

       :completion
       (company +childframe)
       (ivy +icons +prescient +childframe +fuzzy)

       :ui
       doom
       ;doom-dashboard
       hl-todo
       modeline
       ophints
       (popup +all +defaults)
       (unicode +unicode-fonts)
       (ligatures +iosevka)
       vc-gutter
       hydra
       treemacs
       ;vi-tilde-fringe
       (window-select +numbers)
       workspaces
       nav-flash
       zen

       :editor
       (evil +everywhere)
       file-templates
       fold
       (format +onsave)
       parinfer
       word-wrap
       snippets
       multiple-cursors

       :emacs
       (dired +icons)
       electric
       (ibuffer +icons)
       (undo +tree)
       vc

       :term
       vterm
       ;shell
       ;term
       eshell

       :checkers
       (syntax +childframe)
       grammar
       ;spell

       :tools
       (debugger +lsp)
       (eval +overlay)
       (lookup +docsets)
       (pass +auth)
       magit
       ;ein
       pdf
       (docker +lsp)
       rgb
       upload
       pass
       (lsp +peek)
       ;editorconfig

       :os
       (tty +osc)

       :lang
       emacs-lisp
       (json +lsp)
       (markdown +grip)
       (org +gnuplot +brain +pretty +journal +babel)
       (sh +lsp)
       (yaml +lsp)
       (python +lsp +poetry)
       (javascript +lsp)
       (web +lsp)
       ;(haskell +dante)
       ;;racket
       ;;(scala +lsp)
       ;;(cc +lsp)

       :email

       :app
       calendar
       (rss +org)
       irc
       twitter

       :config
       (default +bindings +smartparens))
