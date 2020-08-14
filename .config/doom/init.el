;;; init.el -*- lexical-binding: t; -*-

;;      Press 'gd' (or 'C-c c d') on a module to browse its directory (for easy access to its source code).

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(when noninteractive
  (after! undo-tree
    (global-undo-tree-mode -1)))

(doom! :input
       ;;chinese ;;japanese

       :completion
       (company +childframe)
       (ivy +icons)
       ;;+prescient)
       ;;helm ;;ido

       :ui
       doom
       doom-dashboard
       hl-todo
       modeline
       ophints
       (popup +all +defaults)
       (pretty-code +fira)
       treemacs
       (unicode +unicode-fonts)
       vc-gutter
       vi-tilde-fringe
       (window-select +numbers)
       workspaces
       nav-flash
       zen
       ;;(tabs +centaur-tabs)
       ;;deft ;;doom-quit ;;fill-column ;;hydra ;;indent-guides ;;minimap  ;;neotree

       :editor
       (evil +everywhere)
       file-templates
       fold
       (format +onsave)
       parinfer
       word-wrap
       snippets
       multiple-cursors
       ;;rotate-text
       ;;lispy ;;god ;;objed

       :emacs
       (dired +icons)
       electric
       (ibuffer +icons)
       (undo +tree)
       vc

       :term
       eshell
       vterm
       ;;term
       ;;shell


       :checkers
       syntax
       grammar
       spell

       :tools
       debugger
       (eval +overlay)
       lookup
       magit
       pass
       lsp
       pdf
       tmux
       make
       docket
       rgb
       ;;ansible
       ;;gist
       ;;upload
       ;;editorconfig
       ;;taskrunner ;;terraform

       :lang
       emacs-lisp
       json
       markdown
       (org +dragndrop +pandoc) ;;+roam +dragndrop +present +pandoc
       sh
       yaml
       racket
       (python +cython +lsp :editor format-all)
       (haskell +dante +attrap)
       javascript
       web
       scheme
       ;;elm
       ;;common-lisp
       ;;clojure
       ;;latex
       ;;julia
       ;;sml
       ;;fsharp
       ;;rst
       ;;rust
       ;;scala
       ;;idris
       ;;data
       ;;ess
       ;;gdscript ;;(go +lsp)) ;; hy
       ;;(java +meghanada) ;;lua ;;nim ;;raku ;;rest

       :email
       (mu4e +gmail)
       ;;notmuch
       ;;(wanderlust +gmail)

       :app
       calendar
       irc
       (rss +org)
       ;;twitter

       :config
       ;;literate
       (default +bindings +smartparens))
