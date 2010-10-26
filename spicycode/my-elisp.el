(require 'eldoc)
(require 'paredit)
(require 'durandel)

(eval-after-load 'paredit
  '(progn
     (define-key paredit-mode-map (kbd "C-<backspace>")
       'paredit-backward-kill-word)))

(eval-after-load 'clojure-mode
  '(progn
     (enable-paredit-mode)
     (turn-on-eldoc-mode)
     (highlight-parentheses-mode)
     (durandel-enable)
     (define-key clojure-mode-map "{" 'paredit-open-brace)
     (define-key clojure-mode-map "}" 'paredit-close-brace)))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (enable-paredit-mode)
            (turn-on-eldoc-mode)
            (highlight-parentheses-mode)))