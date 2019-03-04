;;; init-local.el -- load my config
;;; Commentary:
;;;  load my config

;;; Code:
;;;
;;; load send-term
(load "../my-lisp/send-term/send-term.el")



;;; Setting roswell
;;; Reference: https://github.com/roswell/roswell/wiki/Initial-Recommended-Setup
(load (expand-file-name "~/.roswell/helper.el"))
(setq inferior-lisp-program "ros -Q run")
(push `(roswell ("ros" "-Q" "run"))  slime-lisp-implementations)
(setf slime-default-lisp 'roswell)

;;; install I will use package
(require 'init-elpa)
;; install emmet
(require-package 'emmet-mode)
(require-package 'ivy-yasnippet)
;; install yasnippet
(require-package 'ivy-yasnippet)
(require-package 'yasnippet)
(require-package 'yasnippet-classic-snippets)
(require-package 'yasnippet-snippets)
;; install impatient-mode
(require-package 'impatient-mode)



(provide 'init-local)
;;; init-local.el ends here
