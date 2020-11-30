(deftheme hiro-emacs-dark)

;;; Require hiro-emacs-common
;;; -------------------------------------------------------------------
(load "hiro-emacs-common.el")
(require 'hiro-emacs-common)
;;; -------------------------------------------------------------------


;;; General colors
;;; -------------------------------------------------------------------
(setq background-color "#333030")
(setq foreground-color "#9baec8")
(set-background-color background-color)
(set-foreground-color foreground-color)

(set-face-attribute 'face-foreground nil
										:foreground foreground-color)
(set-face-attribute 'face-background nil
										:background background-color)

(set-face-attribute 'default nil
				:foreground (face-foreground 'default)
				:background (face-background 'default))
(set-face-attribute 'face-critical nil
										:foreground "#e81050"
										:weight 'bold)
(set-face-attribute 'face-popout nil
										:foreground "#8ac6d1"
										:background "#525252"
										:weight 'regular)
(set-face-attribute 'face-strong nil
										:foreground "#7b875b"
										:weight 'regular)
(set-face-attribute 'face-salient nil
										:foreground "#6b83ac"
										:weight 'light
										:underline t)
(set-face-attribute 'face-faded nil
										:foreground "#52616a"
										:weight 'regular)
(set-face-attribute 'face-subtle nil
										:background "#555555"
										:weight 'light)

;;; Programming face.
(set-face-attribute 'face-builtin nil
										:foreground "#997599")
(set-face-attribute 'face-keyword nil
										:foreground "#6b83ac")
(set-face-attribute 'face-string nil
										:foreground "#ad7176"
										:weight 'regular)
(set-face-attribute 'face-functionname nil
										:foreground "#9e7a5a"
										:weight 'bold)
(set-face-attribute 'face-variable nil
										:foreground "#7b875b"
										:weight 'light)
(set-face-attribute 'face-type nil
										:foreground "#8d5351"
										)
(set-face-attribute 'face-constant nil
										:foreground "#3e8c9d"
										:weight 'bold)
(set-face-attribute 'face-comment nil
										:foreground "#777777")
(set-face-attribute 'face-warning nil
										:foreground "#e81050")
;;; -------------------------------------------------------------------

(set-face-attribute 'mode-line nil
										:background background-color
										:foreground foreground-color
										:overline nil
										:underline t
										:height 1.0
										:box nil)

(set-face-attribute 'mode-line-inactive nil
										:background background-color
										:foreground foreground-color
										:overline nil
										:underline nil
										:box nil)


(provide-theme 'hiro-emacs-dark)
;;; hiro-emacs-dark-theme.el ends here
