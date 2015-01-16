;; First, enter full screen mode.
(set-frame-parameter nil 'fullscreen 'fullboth)

(require 'cl)

;; Add some stuff to PATH and exec-path
(setenv "PATH" (concat (getenv "PATH") ":/Users/reinh/.cabal/bin"))
(setq exec-path (append exec-path '("/Users/reinh/.cabal/bin")))
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; Configs to load
(defvar configs
  '(packages
    global
    backup
    bindings
    company
    diminish
    eshell
    haskell
    ido
    magit
    occur
    paredit
    registers
    weechat
    weechat-private)
  "A list of config files to load.")

;; Load each config file in `configs`.
(loop for name in configs
      do (load (concat (file-name-directory load-file-name)
                       "config/"
                       (symbol-name name) ".el")))

;; why not?
(nyan-mode 1)
(setq nyan-bar-length 16
      nyan-wavy-trail t)
(eshell)
