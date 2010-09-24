(eval-after-load 'clojure-mode
  '(progn
     (require 'paredit)
     (defun clojure-paredit-hook () (paredit-mode +1))
     (add-hook 'clojure-mode-hook 'clojure-paredit-hook)
     (define-key clojure-mode-map "{" 'paredit-open-brace)
     (define-key clojure-mode-map "}" 'paredit-close-brace)
     (durendal-enable)))

(eval-after-load 'paredit
  '(progn
     (define-key paredit-mode-map (kbd "C-<backspace>")
       'paredit-backward-kill-word)))

(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (interactive)
             (require 'eldoc)
             (turn-on-eldoc-mode)
             (highlight-parentheses-mode)))