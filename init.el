(require 'cl)

(defvar configs
  '(packages
    global
    backup
    ido
    magit
    paredit
    registers)
  "A list of config files to load.")

;; Load each config file in `configs`.
(loop for name in configs
      do (load (concat (file-name-directory load-file-name)
                       "config/"
                       (symbol-name name) ".el")))

;; why not?
(eshell)
