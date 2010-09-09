(require 'cl)

(mapcar 
 (lambda (item) 
   (add-to-list 'load-path (concat long-path item)))
 '("vendor" "spicycode" "vendor/language-modes"
   "vendor/language-modes/markdown" "vendor/language-modes/ruby"
   "vendor/language-modes/ruby/cucumber" "vendor/nav" "vendor/sunburst"
   "vendor/tango" "vendor/textmate"))


; Please save my customizations here, and don't error if the file does not exist
(setq custom-file "~/.emacs.d/spicycode/custom.el")
(load custom-file 'noerror)

(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(require 'el-get)
(load "spicycode/el-get-packages") 

(require 'nav)

;; Provide friendly switching of windows
(require 'switch-window)
(require 'highlight-parentheses)
(require 'color-theme)

(require 'textmate)
(require 'peepopen)
(textmate-mode)
(color-theme-initialize)

(load "spicycode/global")
(load "spicycode/helpers")
(load "spicycode/keys")
(load "spicycode/modes")
(load "spicycode/theme")
