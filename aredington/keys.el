(global-set-key (key "M-/")        'hippie-expand)
(global-set-key (key "C-c C-c M-x") 'execute-extended-command)

(if (featurep 'aquamacs)
    (define-key osx-key-mode-map (kbd "A-o") 'ido-find-file))
(if (featurep 'aquamacs)
    (define-key osx-key-mode-map (kbd "A-b") 'ido-switch-buffer))
(if (featurep 'aquamacs)
  (define-key osx-key-mode-map (kbd "A-w") 'ido-kill-buffer))
