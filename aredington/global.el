;; Kill excess UI
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'tabbar-mode) (tabbar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (and (fboundp 'menu-bar-mode)
         (not window-system)) (menu-bar-mode -1))

;; Don't go opening new frames
(one-buffer-one-frame-mode 0)

(ido-mode t)
(show-paren-mode 1)
(setq show-parent-delay 0)
(require 'uniquify)

(require 'linum)
(global-linum-mode t)

(require 'ack)

(require 'rvm)
(rvm-use-default)

(icomplete-mode t)                       ;; completion in minibuffer
(setq 
  icomplete-prospects-height 1           ;; don't spam my minibuffer
  icomplete-compute-delay 0)             ;; don't wait

(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(require 'auto-complete-config)
(ac-config-default)
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)

;; For Emacs on Mac OS X http://emacsformacosx.com/ and Aquamacs.
;; Opens files in the existing frame instead of making new ones.
(setq ns-pop-up-frames nil)

(setq uniquify-buffer-name-style 'post-forward
      uniquify-separator ":"
      inhibit-startup-message t
      ns-use-system-highlight-color t
      ns-antialias-text t
      ns-use-qd-smoothing nil
      auto-save-default nil
      default-truncate-lines nil
      column-number-mode t
      normal-erase-is-backspace-mode nil
      confirm-kill-emacs nil
      windmove-wrap-around t
      vc-follow-symlinks t
      transient-mark-mode t
      show-paren-style 'parenthesis
      tramp-default-method "scp"
      completion-ignored-extensions '(".a" ".so" ".o" "~" ".bak" ".class" ".hi" ".aux" ".pdf" ".toc")
      dired-listing-switches "-lha"
      history-length 100
      history-delete-duplicates t
      backup-directory-alist (quote ((".*" . "/tmp/emacsbackups/")))
      version-control t
      kept-new-versions 10
      kept-old-versions 2
      delete-old-versions t
      hippie-expand-try-functions-list '(try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-line
                                         try-expand-dabbrev
                                         try-expand-dabbrev-from-kill
                                         try-expand-list
                                         try-expand-dabbrev-all-buffers
                                         try-expand-whole-kill
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol)
      browse-url-browser-function 'browse-url-default-macosx-browser
      ido-enable-flex-matching t
      ring-bell-function 'ignore
      ispell-dictionary "english")

(setq-default indent-tabs-mode nil
              fill-column 79
              global-font-lock-mode t
              ispell-program-name "aspell")

(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(setq teach-extended-commands-p t)
(defalias 'qrr 'query-replace-regexp)
(defalias 'qr 'query-replace)
(defalias 'yes-or-no-p 'y-or-n-p)
