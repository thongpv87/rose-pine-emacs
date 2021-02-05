;; ---------------------------------------------------------------------
;;; rose-pine-theme-color.el
;;
;; Author: Israel Romero (@caelie)
;;
;; URL: https://github.com/rose-pine/rose-pine-theme
;; Created: December 2020
;; Keywords: theming
;; Package-Requires: (emacs "26")
;; Version: 0.1
;;
;;; Commentary:
;;
;; All natural pine,  faux fur and a bit of soho vibes for the classy minimalist.
;;
;; Based on: https://github.com/rougier/nano-emacs
;; ---------------------------------------------------------------------
(setq frame-background-mode   'dark)

(defvar rose-color-foreground "#e0def4")
(defvar rose-color-background "#191724")
(defvar rose-color-highlight  "#2a263c")
(defvar rose-color-critical   "#f6c177")
(defvar rose-color-salient    "#c4a7e7")
(defvar rose-color-strong     "#010101")
(defvar rose-color-popout     "#eb6f92")
(defvar rose-color-subtle     "#706e86")
(defvar rose-color-faded      "#cecaed")
(defvar rose-cursor           "#e0def4")

(require 'rose-pine-theme)
(provide 'rose-pine-theme-color)

;;; rose-pine-theme-color.el ends here
