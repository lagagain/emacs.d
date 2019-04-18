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
;; install yasnippet
(require-package 'ivy-yasnippet)
(require-package 'yasnippet)
(require-package 'yasnippet-classic-snippets)
(require-package 'yasnippet-snippets)
;; install impatient-mode
(require-package 'impatient-mode)
;; install ace-jump-mode
(require-package 'ace-jump-mode)
(global-set-key (kbd "C-c C-j a") 'ace-jump-mode)
;; install ob-async
(require-package 'ob-async)

;; set org-crypt
(require  'org-crypt)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance (quote ("crypt")))

(setq org-crypt-key "lagagain@email.com")


(provide 'init-local)
;;; init-local.el ends here
