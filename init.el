;; Configure package.el to include MELPA.
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; use-package needs to be installed for it to
;; work, so install it if necessary
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

;; Set theme
(custom-set-variables
 '(custom-enabled-themes (quote (doom-Iosvkem)))
 '(custom-safe-themes
   (quote
    ("7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" default)))
 '(package-selected-packages
   (quote
    (evil elscreen-multi-term helm-spotify-plus which-key use-package helm doom-themes))))
(custom-set-faces)

;; Load configuration.org via org-babel
(org-babel-load-file "~/.emacs.d/configuration.org")


