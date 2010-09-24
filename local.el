(require 'cl)

(mapcar 
 (lambda (item) 
   (add-to-list 'load-path (concat long-path item)))
 '("vendor" "spicycode" "vendor/language-modes"
   "vendor/language-modes/ruby"
   "vendor/language-modes/ruby/cucumber" "vendor/nav" "vendor/sunburst"
   "vendor/tango"))


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

(require 'smex)
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Provide friendly switching of windows
(require 'switch-window)
(require 'highlight-parentheses)
(require 'color-theme)
(require 'emacsd-tile)

(defun mac-toggle-max-window ()
  (interactive)
  (set-frame-parameter nil 'fullscreen
                       (if (frame-parameter nil 'fullscreen)
                           nil
                         'fullboth)))
(global-set-key (kbd "<M-return>") 'mac-toggle-max-window)

;; do not confirm file creation
(setq confirm-nonexistent-file-or-buffer nil)

(defun backward-kill-word-or-kill-region (&optional arg)
  (interactive "p")
  (if (region-active-p)
      (kill-region (region-beginning) (region-end))
    (backward-kill-word arg)))

(global-set-key (kbd "C-w") 'backward-kill-word-or-kill-region)

(require 'textmate)
(require 'peepopen)
(textmate-mode)
(color-theme-initialize)

(load "spicycode/global")
(load "spicycode/helpers")
(load "spicycode/keys")
(load "spicycode/modes")
(load "spicycode/theme")
