# EMACS CONFIGURATION

A beginners guide to yelling about emacs configuration. Derived from
https://github.com/spicycode/the-greatest-and-best-emacs-configuration-ever-devised-by-man

Now with swank magic for Clojure happiness.

## YOU'LL WANT TO SYMLINK THIS DIRECTORY TO ~/.emacs.d

## YOUR CRAPPY CONFIG MAKES AQUAMACS ASPLODE!!!

Sorry, I have run into this too and I feel your pain. On the first startup this
config will try and pull down, install, and compile a LARGE VOLUME of emacs
lisp files. This can end up causing aquamacs to crash.

Worse still, after you restart from a crash, you'll get a lovely error message
telling you everything is awful and that some package (often I've found the
culprit is haml-mode) is already marked as installed, remove it first. To fix:

M-x el-get-remove <enter>
haml-mode <enter>

M-x el-get-install <enter>
haml-mode <enter>

Other likely culprits are inf-ruby and rvm. If you install them yourself with
el-get-install they probably won't blow up. Probably.

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
