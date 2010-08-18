(setq el-get-sources
      '((:name magit
	       :type git
	       :url "http://github.com/philjackson/magit.git"
	       :info "."
	       :build ("./autogen.sh" "./configure" "make"))
	(:name ac-slime
               :type git
               :url "http://github.com/purcell/ac-slime.git")
        (:name auto-complete
               :type git
               :url "http://github.com/m2ym/auto-complete.git"
               :build ("make byte-compile" "cp -r dict ~/.emacs.d"))
	(:name clojure-mode     :type elpa)
	(:name paredit          :type elpa)
	(:name slime            :type elpa)
  (:name slime-repl       :type elpa)))

(el-get)
