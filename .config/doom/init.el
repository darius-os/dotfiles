;;; init.el -*- lexical-binding: t; -*-

;;      Press 'gd' (or 'C-c c d') on a module to browse its directory (for easy access to its source code).

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(doom! :input
       ;;chinese ;;japanese

       :completion
       (company +tng) ;;+childframe)
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
       unicode
       vc-gutter
       vi-tilde-fringe
       (window-select +numbers)
       workspaces
       ;;nav-flash
       ;;zen
       ;;deft ;;doom-quit ;;fill-column ;;hydra ;;indent-guides ;;minimap  ;;neotree ;;tabs

       :editor
       (evil +everywhere)
       file-templates
       fold
       (format +onsave)
       parinfer
       ;;snippets
       multiple-cursors
       rotate-text
       ;;lispy ;;god ;;objed ;;word-wrap

       :emacs
       (dired +icons)
       electric
       (ibuffer +icons)
       (undo +tree)
       vc

       :term
       ;;eshell
       vterm
       ;;term
       shell


       :checkers
       syntax
       grammar
       ;;spell

       :tools
       debugger
       (eval +overlay)
       lookup
       magit
       pdf
       pass
       ;;docker
       ;;ansible
       ;;gist
       ;;rgb
       ;;upload
       ;;lsp ;;make ;;editorconfig
       ;;taskrunner ;;terraform ;;tmux

       :lang
       emacs-lisp
       json
       markdown
       (org +dragndrop +pandoc) ;;+roam +dragndrop +present +pandoc
       sh
       yaml
       scheme
       racket
       (python
        :editor format-all)
       ;;common-lisp
       ;;clojure
       ;;javascript
       ;;elm
       ;;web
       ;;data
       ;;ess
       ;;latex
       ;;(haskell +lsp) ;;data ;;fsharp ;;gdscript ;;(go +lsp)) ;;sml ;; hy
       ;;(java +meghanada) ;;julia ;;lua ;;nim ;;raku ;;rest ;;rst ;;rust ;;scala

       :email
       ;;(mu4e +gmail)
       ;;notmuch
       ;;(wanderlust +gmail)

       :app
       calendar
       irc
       ;;(rss +org)
       ;;twitter

       :config
       ;;literate
       (default +bindings +smartparens))
