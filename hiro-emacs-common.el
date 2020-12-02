;;; When we set a face, we take care of removing any previous settings
(defun set-face (face style)
	"Reset a FACE and make it inherit STYLE."
	(set-face-attribute face nil
	 :foreground 'unspecified :background 'unspecified
	 :family     'unspecified :slant      'unspecified
	 :weight     'unspecified :height     'unspecified
	 :underline  'unspecified :overline   'unspecified
	 :box        'unspecified :inherit    style))
;;; -------------------------------------------------------------------


;;; A theme is fully defined by these six faces
;;; -------------------------------------------------------------------
(defgroup hiro-theme nil
	"Faces for the elegance theme"
	:prefix "hiro-face-"
	:group 'faces)
;;; -------------------------------------------------------------------


;;; Custom faces definition
;;; -------------------------------------------------------------------
(defface face-critical nil
"Critical face is for information that requires immediate action.
It should be of high constrast when compared to other faces. This
can be realized (for example) by setting an intense background
color, typically a shade of red. It must be used scarcely."
:group 'hiro-face)

(defface face-popout nil
"Popout face is used for information that needs attention.
To achieve such effect, the hue of the face has to be
sufficiently different from other faces such that it attracts
attention through the popout effect."
:group 'hiro-face)

(defface face-strong nil
"Strong face is used for information of a structural nature.
It has to be the same color as the default color and only the
weight differs by one level (e.g., light/regular or
regular/bold). IT is generally used for titles, keywords,
directory, etc."
:group 'hiro-face)

(defface face-salient nil
"Salient face is used for information that are important.
To suggest the information is of the same nature but important,
the face uses a different hue with approximately the same
intensity as the default face. This is typically used for links."
:group 'hiro-face)

(defface face-faded nil
"Faded face is for information that are less important.
It is made by using the same hue as the default but with a lesser
intensity than the default. It can be used for comments,
secondary information and also replace italic (which is generally
abused anyway)."
:group 'hiro-face)

(defface face-subtle nil
"Subtle face is used to suggest a physical area on the screen.
It is important to not disturb too strongly the reading of
information and this can be made by setting a very light
background color that is barely perceptible."
:group 'hiro-face)

(defface face-builtin nil
	"Programming builtin face."
	:group 'hiro-face)
(defface face-keyword nil
	"Progamming keyword face."
	:group 'hiro-face)
(defface face-string nil
	"Programming string face."
	:group 'hiro-face)
(defface face-functionname nil
	"Programming function name face."
	:group 'hiro-face)
(defface face-variable nil
	"Programming variable face."
	:group 'hiro-face)
(defface face-type nil
	"Programming type face."
	:group 'hiro-face)
(defface face-constant nil
	"Programming constant face."
	:group 'hiro-face)
(defface face-comment nil
	"Programming comment face."
	:group 'hiro-face)
(defface face-warning nil
	"Programing warning face."
	:group 'hiro-face)

(defface face-foreground nil
	"Normal foreground face."
	:group 'hiro-face)

(defface face-background nil
	"Normal background face."
	:group 'hiro-face)
;;; -------------------------------------------------------------------


;;; -------------------------------------------------------------------
;; Structural
;; -------------------------------------------------------------------
(set-face 'bold                                          'face-strong)
(set-face 'italic                                         'face-faded)
(set-face 'bold-italic                                   'face-strong)
(set-face 'region                                        'face-subtle)
(set-face 'highlight                                     'face-subtle)
(set-face 'fixed-pitch                                       'default)
(set-face 'fixed-pitch-serif                                 'default)
(set-face 'variable-pitch                                    'default)
(set-face 'cursor                                            'default)
;;; -------------------------------------------------------------------


;; Semantic
;;; -------------------------------------------------------------------
(set-face 'shadow                                         'face-faded)
(set-face 'success                                      'face-salient)
(set-face 'warning                                       'face-popout)
(set-face 'error                                       'face-critical)
;;; -------------------------------------------------------------------


;; General
;;; -------------------------------------------------------------------
(set-face 'buffer-menu-buffer                            'face-strong)
(set-face 'minibuffer-prompt                             'face-strong)
(set-face 'link                                         'face-salient)
(set-face 'fringe                                         'face-faded)
(set-face 'isearch                                       'face-strong)
(set-face 'isearch-fail                                   'face-faded)
(set-face 'lazy-highlight                                'face-subtle)
(set-face 'trailing-whitespace                           'face-subtle)
(set-face 'show-paren-match                              'face-popout)
(set-face 'show-paren-mismatch                           'face-normal)
(set-face-attribute 'tooltip nil                         :height 0.85)
;;; -------------------------------------------------------------------


;; Programmation mode
;;; -------------------------------------------------------------------
(set-face 'font-lock-comment-face                         'face-comment)
(set-face 'font-lock-doc-face                             'face-comment)
(set-face 'font-lock-string-face                         'face-string)
(set-face 'font-lock-constant-face                      'face-constant)
(set-face 'font-lock-warning-face                        'face-warning)
(set-face 'font-lock-function-name-face                  'face-functionname)
(set-face 'font-lock-variable-name-face                  'face-variable)
(set-face 'font-lock-builtin-face                       'face-builtin)
(set-face 'font-lock-type-face                          'face-type)
(set-face 'font-lock-keyword-face                       'face-keyword)
;;; -------------------------------------------------------------------


;; Documentation
;;; -------------------------------------------------------------------
(set-face 'info-header-node                            'face-normal)
(set-face 'Info-quoted                                  'face-faded)
(set-face 'info-title-1                                'face-strong)
(set-face 'info-title-2                                'face-strong)
(set-face 'info-title-3                                'face-strong)
(set-face 'info-title-4                               'face-strong)
;;; -------------------------------------------------------------------



;; Package
;;; -------------------------------------------------------------------
(set-face 'package-description                             'default)
(set-face 'package-help-section-name                       'default)
(set-face 'package-name                               'face-salient)
(set-face 'package-status-avail-obso                    'face-faded)
(set-face 'package-status-available                        'default)
(set-face 'package-status-built-in                    'face-salient)
(set-face 'package-status-dependency                  'face-salient)
(set-face 'package-status-disabled                      'face-faded)
(set-face 'package-status-external                         'default)
(set-face 'package-status-held                             'default)
(set-face 'package-status-incompat                      'face-faded)
(set-face 'package-status-installed                   'face-salient)
(set-face 'package-status-new                              'default)
(set-face 'package-status-unsigned                         'default)
;;; -------------------------------------------------------------------



;; Flyspell
;;; -------------------------------------------------------------------
(set-face 'flyspell-duplicate                         'face-popout)
(set-face 'flyspell-incorrect                         'face-popout)
;;; -------------------------------------------------------------------


;; Ido
;;; -------------------------------------------------------------------
(set-face 'ido-first-match                            'face-salient)
(set-face 'ido-only-match                               'face-faded)
(set-face 'ido-subdir                                 'face-strong)
;;; -------------------------------------------------------------------


;; Diff
;;; -------------------------------------------------------------------
(set-face 'diff-header                                  'face-faded)
(set-face 'diff-file-header                            'face-strong)
(set-face 'diff-context                                    'default)
(set-face 'diff-removed                                 'face-faded)
(set-face 'diff-changed                                'face-popout)
(set-face 'diff-added                                 'face-salient)
(set-face 'diff-refine-added            '(face-salient face-strong))
(set-face 'diff-refine-changed                         'face-popout)
(set-face 'diff-refine-removed                          'face-faded)
(set-face-attribute     'diff-refine-removed nil :strike-through t)
;;; -------------------------------------------------------------------


;; org-agendas
;;; -------------------------------------------------------------------
(set-face 'org-agenda-calendar-event                    'default)
(set-face 'org-agenda-calendar-sexp                     'face-faded)
(set-face 'org-agenda-clocking                          'face-faded)
(set-face 'org-agenda-column-dateline                   'face-faded)
(set-face 'org-agenda-current-time                      'face-faded)
(set-face 'org-agenda-date                            'face-salient)
(set-face 'org-agenda-date-today        '(face-salient face-strong))
(set-face 'org-agenda-date-weekend                      'face-faded)
(set-face 'org-agenda-diary                             'face-faded)
(set-face 'org-agenda-dimmed-todo-face                  'face-faded)
(set-face 'org-agenda-done                              'face-faded)
(set-face 'org-agenda-filter-category                   'face-faded)
(set-face 'org-agenda-filter-effort                     'face-faded)
(set-face 'org-agenda-filter-regexp                     'face-faded)
(set-face 'org-agenda-filter-tags                       'face-faded)
(set-face 'org-agenda-restriction-lock                  'face-faded)
(set-face 'org-agenda-structure                        'face-faded)
;;; -------------------------------------------------------------------


;; org mode
;;; -------------------------------------------------------------------
(set-face 'org-archived                                 'face-faded)
(set-face 'org-block                                    'face-faded)
(set-face 'org-block-begin-line                         'face-faded)
(set-face 'org-block-end-line                           'face-faded)
(set-face 'org-checkbox                                 'face-faded)
(set-face 'org-checkbox-statistics-done                 'face-faded)
(set-face 'org-checkbox-statistics-todo                 'face-faded)
(set-face 'org-clock-overlay                            'face-faded)
(set-face 'org-code                                     'face-faded)
(set-face 'org-column                                   'face-faded)
(set-face 'org-column-title                             'face-faded)
(set-face 'org-date                                     'face-faded)
(set-face 'org-date-selected                            'face-faded)
(set-face 'org-default                                  'face-faded)
(set-face 'org-document-info                            'face-faded)
(set-face 'org-document-info-keyword                    'face-faded)
(set-face 'org-document-title                           'face-faded)
(set-face 'org-done                                        'default)
(set-face 'org-drawer                                   'face-faded)
(set-face 'org-ellipsis                                 'face-faded)
(set-face 'org-footnote                                 'face-faded)
(set-face 'org-formula                                  'face-faded)
(set-face 'org-headline-done                            'face-faded)
(set-face 'org-latex-and-related                        'face-faded)
(set-face 'org-level-1                                 'face-strong)
(set-face 'org-level-2                                 'face-strong)
(set-face 'org-level-3                                 'face-strong)
(set-face 'org-level-4                                 'face-strong)
(set-face 'org-level-5                                 'face-strong)
(set-face 'org-level-6                                 'face-strong)
(set-face 'org-level-7                                 'face-strong)
(set-face 'org-level-8                                 'face-strong)
(set-face 'org-link                                   'face-salient)
(set-face 'org-list-dt                                  'face-faded)
(set-face 'org-macro                                    'face-faded)
(set-face 'org-meta-line                                'face-faded)
(set-face 'org-mode-line-clock                          'face-faded)
(set-face 'org-mode-line-clock-overrun                  'face-faded)
(set-face 'org-priority                                 'face-faded)
(set-face 'org-property-value                           'face-faded)
(set-face 'org-quote                                    'face-faded)
(set-face 'org-scheduled                                'face-faded)
(set-face 'org-scheduled-previously                     'face-faded)
(set-face 'org-scheduled-today                          'face-faded)
(set-face 'org-sexp-date                                'face-faded)
(set-face 'org-special-keyword                          'face-faded)
(set-face 'org-table                                    'face-faded)
(set-face 'org-tag                                      'face-faded)
(set-face 'org-tag-group                                'face-faded)
(set-face 'org-target                                   'face-faded)
(set-face 'org-time-grid                                'face-faded)
(set-face 'org-todo                                    'face-popout)
(set-face 'org-upcoming-deadline                        'face-faded)
(set-face 'org-verbatim                                 'face-faded)
(set-face 'org-verse                                    'face-faded)
(set-face 'org-warning                                'face-popout)
;;; -------------------------------------------------------------------

;;; company face
(set-face 'company-preview 'face-strong)
(set-face 'company-preview-common 'face-strong)
(set-face 'company-preview-search 'face-strong)
(set-face 'company-tooltip-common-selection 'face-strong)
(set-face 'company-tooltip-common 'face-strong)
(set-face 'company-tooltip-selection 'face-critical)
(set-face 'company-tooltip-annotation 'face-salient)
(set-face 'company-tooltip-annotation-selection 'face-salient)
(set-face 'company-tooltip 'face-popout)
(set-face 'company-scrollbar-bg 'face-salient)

;;; snails face
(set-face 'snails-header-line-face 'face-strong)
(set-face 'snails-header-index-face 'face-strong)
(set-face 'snails-input-buffer-face' face-strong)
(set-face 'snails-content-buffer-face 'face-popout)
(set-face 'snails-select-line-face 'face-strong)
(set-face 'snails-tips-prefix-backend-face 'face-strong)
(set-face 'snails-candiate-content-face 'face-strong)
(set-face 'snails-tips-prefix-key-face 'face-strong)

;;; ivy face
(set-face 'ivy-minibuffer-match-face-1 'face-salient)
(set-face 'ivy-minibuffer-match-face-2 'face-strong)
(set-face 'ivy-minibuffer-match-face-3 'face-strong)
(set-face 'ivy-minibuffer-match-face-4 'face-strong)
(set-face 'ivy-minibuffer-match-highlight 'face-critical)

;;; rime face
(set-face 'rime-code-face 'face-salient)
(set-face 'rime-cursor-face 'face-faded)
(set-face 'rime-comment-face 'face-subtle)
(set-face 'rime-preedit-face 'face-strong)
(set-face 'rime-default-face 'face-popout)
(set-face 'rime-indicator-dim-face 'face-subtle)
(set-face 'rime-indicator-face 'face-subtle)
(set-face 'rime-highlight-candidate-face 'face-strong)

;;;;###autoload
;;; -------------------------------------------------------------------
(when load-file-name
	(add-to-list 'custom-theme-load-path
							 (file-name-as-directory (file-name-directory load-file-name))))

(provide 'hiro-emacs-common)
;;; hiro-emacs-common.el ends here
