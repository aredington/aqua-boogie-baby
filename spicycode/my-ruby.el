(setq ruby-program-name "irb --inf-ruby-mode")

(autoload 'run-ruby "inf-ruby")

(autoload 'inf-ruby-keys "inf-ruby")

(autoload 'rdebug "rdebug")

(add-hook
 'ruby-mode-hook
 '(lambda ()
    (inf-ruby-keys)
    (pretty-lambdas)))