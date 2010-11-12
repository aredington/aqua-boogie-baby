(global-set-key (key "M-/")        'hippie-expand)
(global-set-key (key "C-c C-c M-x") 'execute-extended-command)

(define-key osx-key-mode-map (kbd "A-o") 'ido-find-file)
(define-key osx-key-mode-map (kbd "A-b") 'ido-switch-buffer)
(define-key osx-key-mode-map (kbd "A-w") 'ido-kill-buffer)
