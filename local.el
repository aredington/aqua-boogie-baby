(require 'cl)

(mapcar (lambda (item) (add-to-list 'load-path (concat long-path item)))
        '("vendor" "spicycode" "vendor/language-modes"
          "vendor/language-modes/markdown" "vendor/language-modes/ruby"
          "vendor/language-modes/ruby/cucumber" "vendor/nav" "vendor/sunburst"
          "vendor/tango" "vendor/textmate"))

(require 'nav)
(require 'highlight-parentheses)
(require 'color-theme)
(require 'textmate)
(textmate-mode)
(color-theme-initialize)

(load "spicycode/global")
(load "spicycode/helpers")
(load "spicycode/keys")
(load "spicycode/modes")
(load "spicycode/theme")
