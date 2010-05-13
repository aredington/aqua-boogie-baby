(defvar real-keyboard-keys
  ;; Copyright (c) 2007-2008 Nathan Weizenbaum
  '(("M-<up>"        . "\M-[1;3A")
    ("M-<down>"      . "\M-[1;3B")
    ("M-<right>"     . "\M-[1;3C")
    ("M-<left>"      . "\M-[1;3D")
    ("C-<return>"    . "\C-j")
    ("C-<delete>"    . "\M-[3;5~")
    ("C-<up>"        . "\M-[1;5A")
    ("C-<down>"      . "\M-[1;5B")
    ("C-<right>"     . "\M-[1;5C")
    ("C-<left>"      . "\M-[1;5D")
    ("C-<home>"      . "\C-[1;5H")
    ("C-<end>"       . "\C-[1;5F"))
  "An assoc list of pretty key strings
and their terminal equivalents.")

(defun key (desc)
  ;; Copyright (c) 2007-2008 Nathan Weizenbaum
  (or (and window-system (read-kbd-macro desc))
      (or (cdr (assoc desc real-keyboard-keys))
          (read-kbd-macro desc))))

(defun make-directory-from-minibuffer ()
  "Create a directory at the location given by the minibuffer,
which should be selected."
  (interactive)
  (make-directory (minibuffer-contents) t)
  (princ (concat "Created directory " (minibuffer-contents))))

(defun* pretty-lambdas (&optional (regexp "(?\\(lambda\\>\\)"))
  "Make NAME render as λ."
  (font-lock-add-keywords
   nil `((,regexp
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    ,(make-char 'greek-iso8859-7 107))
                    nil))))))