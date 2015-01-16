;; No splash screen please ... jeez
(setq inhibit-startup-message t)

;; Shorten confirmation prompts
(defalias 'yes-or-no-p 'y-or-n-p)

;; custom place to save customizations
(setq custom-file "~/.emacs.d/custom.el")
(when (file-exists-p custom-file) (load custom-file))

(winner-mode)
