# EMACS CONFIGURATION

A beginners guide to yelling about emacs configuration. Derived from
https://github.com/spicycode/the-greatest-and-best-emacs-configuration-ever-devised-by-man

Now with swank magic for Clojure happiness.

## YOU'LL WANT TO SYMLINK THIS DIRECTORY TO ~/.emacs.d

### ALSO, YOU'LL WANT TO CREATE A ~/.emacs FILE THAT HAS THE FOLLOWING IN IT

    (toggle-debug-on-error t)

    (setq long-path "/Users/YOUR USERNAME HERE/.emacs.d/")
    (add-to-list 'load-path long-path)
    (load "local")

    (rvm-autodetect-ruby)

    (eval-after-load "slime" 
      '(progn (slime-setup '(slime-repl))))

    (slime-setup)

    (set-variable 'inferior-lisp-program "/usr/bin/java -cp /Users/alex/clojure-core/clojure/clojure.jar clojure.main")
    (set-variable 'inferior-lisp-buffer "*inferior-lisp*")
    (menu-bar-mode t)
    (server-start)
