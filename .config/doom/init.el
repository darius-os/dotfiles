;;; init.el -*- lexical-binding: t; -*-

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(doom! :input

       :completion
       (company +childframe)
       (ivy +icons)

       :ui
       doom
       doom-dashboard
       hl-todo
       modeline
       ophints
       (popup +all +defaults)
       (unicode +unicode-fonts)
       (ligatures +fira)
       vc-gutter
       vi-tilde-fringe
       (window-select +numbers)
       workspaces
       nav-flash

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
       eshell

       :checkers
       syntax
       grammar

       :tools
       (debugger +lsp)
       (eval +overlay)
       lookup
       magit
       pass
       lsp
       ;editorconfig

       :lang
       emacs-lisp
       json
       markdown
       org
       sh
       yaml
       racket
       (python +lsp +poetry)
       (haskell +dante)
       (javascript +lsp)
       (web +lsp)

       :email

       :app
       irc

       :config
       (default +bindings +smartparens))
