(load "my-elisp")
(load "my-ruby")

(defun autoload-mode (name regex &optional file)
  ;; Copyright (c) 2007-2008 Nathan Weizenbaum
  "Automatically loads a language mode
when opening a file of the appropriate type.

`name' is the name of the mode.
E.g. for javascript-mode, `name' would be \"javascript\".

`regex' is the regular expression matching filenames of the appropriate type.

`file' is the name of the file
from which the mode function should be loaded.
By default, it's `name'-mode.el."
  (let* ((name-mode (concat name "-mode"))
         (name-sym (intern name-mode)))
    (autoload name-sym (or file name-mode)
      (format "Major mode for editing %s." name) t)
    (add-to-list 'auto-mode-alist (cons regex name-sym))))

(autoload-mode "css"        "\\.css$")
(autoload-mode "feature"    "\\.feature$")
(autoload-mode "markdown"   "\\.\\(text\\|md\\|mdwn\\|mdown\\|mkdn\\)$")
(autoload-mode "rhtml"      "\\.\\(rhtml\\|erb\\)$")
(autoload-mode "ruby"       "\\(\\.\\(rb\\|rake\\|rjs\\)\\|Rakefile\\|gemspec\\)$")
(autoload-mode "sass"       "\\.sass$")
(autoload-mode "yaml"       "\\.ya?ml$")
