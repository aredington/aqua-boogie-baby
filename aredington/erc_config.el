(eval-after-load "erc"
  '(progn
     (setq erc-bbdb-auto-create-on-whois-p t
           erc-hide-list '("JOIN" "PART" "QUIT")
	   erc-fill-column (- (window-width) 2)
	   erc-pals '("stuartsierra" "dchelimsky")
	   erc-notify-list erc-pals)
     (add-hook 'erc-mode-hook 'erc-add-scroll-to-bottom)))