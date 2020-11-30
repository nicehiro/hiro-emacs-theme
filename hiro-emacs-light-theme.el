(deftheme hiro-emacs-light)

;;; Require hiro-emacs-common
;;; -------------------------------------------------------------------
(load "hiro-emacs-common.el")
(require 'hiro-emacs-common)
;;; -------------------------------------------------------------------


;;; General colors
;;; -------------------------------------------------------------------
(setq dark "#000000")
(setq github-gray "#f6f8fa")
(setq github-gray-dark "#24292e")
(setq github-gray-light "#fafbfc")
(setq github-text-blue "#0366d6")
(setq github-text-gray-dark "#24292e")
(setq github-text-gray "#586069")
(setq github-text-red "#cb2431")
(setq github-text-orange "#a04100")
(setq github-text-orange-light "#e36209")
(setq github-text-green "#28a745")
(setq github-text-purple "#6f42c1")

(set-background-color github-gray-light)
(set-foreground-color github-text-gray-dark)

(set-face-attribute 'face-foreground nil
										:foreground github-text-gray-dark)
(set-face-attribute 'face-background nil
										:background github-gray-light)

(set-face-attribute 'default nil
				:foreground (face-foreground 'default)
				:background (face-background 'default))
(set-face-attribute 'face-critical nil
										:foreground github-text-red
										:weight 'bold)
(set-face-attribute 'face-popout nil
										:foreground github-text-blue
										:background github-gray
										:bold)
(set-face-attribute 'face-strong nil
										:foreground github-text-red
										:weight 'regular)
(set-face-attribute 'face-salient nil
										:foreground github-text-blue
										:weight 'light
										:underline t)
(set-face-attribute 'face-faded nil
										:foreground github-text-purple
										:weight 'regular)
(set-face-attribute 'face-subtle nil
										:background github-gray
										:weight 'regular)

;;; Programming face.
(set-face-attribute 'face-builtin nil
										:foreground github-text-blue)
(set-face-attribute 'face-keyword nil
										:foreground github-text-blue)
(set-face-attribute 'face-string nil
										:foreground github-text-orange-light
										:weight 'regular)
(set-face-attribute 'face-functionname nil
										:foreground github-text-blue)
(set-face-attribute 'face-variable nil
										:foreground github-text-orange
										:weight 'light)
(set-face-attribute 'face-type nil
										:foreground github-text-green)
(set-face-attribute 'face-constant nil
										:foreground github-text-green)
(set-face-attribute 'face-comment nil
										:foreground github-text-gray)
(set-face-attribute 'face-warning nil
										:foreground github-text-red)
;;; -------------------------------------------------------------------

(set-face-attribute 'mode-line nil
										:background github-gray-light
										:foreground github-text-gray-dark
										:overline nil
										:underline t
										:height 1.0
										:box nil)

(set-face-attribute 'mode-line-inactive nil
										:background github-gray-light
										:foreground github-text-gray-dark
										:overline nil
										:underline nil
										:weight 'regular
										:box nil)

(provide-theme 'hiro-emacs-light)
;;; hiro-emacs-light-theme.el ends here
