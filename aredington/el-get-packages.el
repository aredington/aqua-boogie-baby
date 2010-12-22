(setq el-get-sources
      '((:name magit)
	(:name smex)
	(:name el-get)
	(:name auto-complete)
        (:name ac-slime
               :type git
               :url "http://github.com/purcell/ac-slime.git")
	(:name durandel
               :type git
               :feature durandel
               :url "http://github.com/technomancy/durendal.git")
        (:name markdown-mode
               :type git
               :url "http://github.com/defunkt/markdown-mode.git")
        (:name cucumber
               :type git
               :url "http://github.com/michaelklishin/cucumber.el.git")
	(:name clojure-mode     :type elpa)
	(:name paredit          :type elpa)
        (:name inf-ruby         :type elpa)
        (:name ruby-mode        :type elpa)
        (:name ruby-test-mode   :type elpa)
        (:name haml-mode        :type elpa)
        (:name rvm              :type elpa)
        (:name taskpaper
               :type git
               :url "https://github.com/tedroden/taskpaper-el.git")
	;(:name slime            :type elpa)
	;(:name slime-repl       :type elpa)
))
(el-get)
