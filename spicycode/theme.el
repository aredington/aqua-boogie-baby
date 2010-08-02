(setq default-frame-alist
      '((tool-bar-lines . 0)
        (menu-bar-lines . 0)
        (background-mode . dark)
        (background-color . "#000000")
        (foreground-color . "#FFFFFF")
        (cursor-color . "#DAD085")))

(setq window-system-default-frame-alist
      '((mac (font . "Menlo-12")
             (menu-bar-lines . 1)
             (width . 105)
             (height . 55))
        (x (font . "Monospace-9")
           (menu-bar-lines . 0))))

(load-file "~/.emacs.d/vendor/color-theme-irblack.el")
(color-theme-irblack)

(if window-system
    (if (eq window-system 'x)
        (set-scroll-bar-mode nil))
    (progn
      (global-hl-line-mode 1)

      (set-face-background 'hl-line "#333333")
      (set-face-foreground 'hl-line nil))
  (progn ;;(color-theme-tty-dark)
         (global-hl-line-mode -1)))
