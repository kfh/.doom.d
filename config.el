;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; refresh' after modifying this file!

;; These are used for a number of things, particularly for GPG configuration,
;; some email clients, file templates and snippets.
(setq user-full-name "Kristian Frøhlich"
      user-mail-address "kfh@kfh.no")

;; Set the frame size so we don't have to resize manually after each restart
(setq initial-frame-alist '((left . 0) (width . 170) (fullscreen . fullheight)))

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "FuraCode Nerd Font" :size 15))

 ;; Fill entire frame with magit status buffer
(require 'magit)
(setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1)

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. These are the defaults.
(setq doom-theme 'doom-one)

;; If you intend to use org, it is recommended you change this!
;;(setq org-directory "~/org/")

;; If you want to change the style of line numbers, change this to `relative' or
;; `nil' to disable it:
(setq display-line-numbers-type t)

;; Avoid that annoying confirm quit message
(setq confirm-kill-emacs nil)

;; Ensure the option key om Mac keyboards works as expected
(setq mac-option-modifier nil)

;; We want a blinking cursor
(blink-cursor-mode 1)

;; Split window horizontally and go to
(setq evil-split-window-below t)

;; Split window vertically and go to
(setq evil-vsplit-window-right t)

;; Enable gorepl-mode in go-mode buffers
(add-hook 'go-mode-hook #'gorepl-mode)

;; Enable go-imports
(setq gofmt-command "goimports")

;; Format Go code when saving
(add-hook 'before-save-hook 'gofmt-before-save)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', where Emacs
;;   looks when you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
