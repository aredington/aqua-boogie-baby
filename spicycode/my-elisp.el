(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (interactive)
             (require 'eldoc)
             (turn-on-eldoc-mode)
             (pretty-lambdas)
             (highlight-parentheses-mode)))