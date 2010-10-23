(require 'eldoc)
;; Hack until I can understand why paredit alone can't load correctly
(load "el-get/paredit/paredit.el")

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

(eval-after-load 'emacs-lisp-mode-hook
  '(progn
     (enable-paredit-mode)
     (turn-on-eldoc-mode)
     (highlight-parentheses-mode)))