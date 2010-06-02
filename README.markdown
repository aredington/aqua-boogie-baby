# EMACS CONFIGURATION

A beginners guide to yelling about emacs configuration.

## YOU'LL WANT TO SYMLINK THIS DIRECTORY TO ~/.emacs.d

### ALSO, YOU'LL WANT TO CREATE A ~/.emacs FILE THAT HAS THE FOLLOWING IN IT

    (toggle-debug-on-error t)

    (setq long-path "/Users/YOUR_NAME_HERE/.emacs.d/")
    (add-to-list 'load-path long-path)
    (load "local")
