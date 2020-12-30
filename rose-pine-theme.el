;; ---------------------------------------------------------------------
;;; rose-pine-theme-dark.el
;;
;; Author: Israel Romero (@nedovtipa)
;;
;; URL: https://github.com/rose-pine/rose-pine-theme
;;
;; Version: 1.0

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; All natural pine,  faux fur and a bit of soho vibes for the classy minimalist.
;; ---------------------------------------------------------------------

;; ---------------------------------------------------------------------
;;
;; This file defines the 7 basic rose faces:
;;
;; - rose-face-critical  - rose-face-popout   - rose-face-salient
;; - rose-face-default   - rose-face-faded    - rose-face-subtle
;; - rose-cursor
;;
;; These faces are used for setting all faces in various modes. The only
;; exception is the highlight line mode that uses a very light color.
;;
;; ---------------------------------------------------------------------

;; When we set a face, we take care of removing any previous settings
(defun set-face (face style)
  "Reset a face and make it inherit style."
  (set-face-attribute face nil
   :foreground 'unspecified :background 'unspecified
   :family     'unspecified :slant      'unspecified
   :weight     'unspecified :height     'unspecified
   :underline  'unspecified :overline   'unspecified
   :box        'unspecified :inherit    style))

;; A theme is fully defined by these seven faces
(defgroup rose nil
  "Faces for the rose-pine emacs theme")

(defface rose-face-default nil
  "Default face is used for regular information."
:group 'rose)

(defface rose-face-critical nil
  "Critical face is for information that requires immediate action.
It should be of high constrast when compared to other faces. This
can be realized (for example) by setting an intense background
color, typically a shade of red. It must be used scarcely."
:group 'rose)

(defface rose-face-popout nil
"Popout face is used for information that needs attention.
To achieve such effect, the hue of the face has to be
sufficiently different from other faces such that it attracts
attention through the popout effect."
:group 'rose)

(defface rose-face-strong nil
"Strong face is used for information of a structural nature.
It has to be the same color as the default color and only the
weight differs by one level (e.g., light/regular or
regular/bold). IT is generally used for titles, keywords,
directory, etc."
:group 'rose)

(defface rose-face-salient nil
"Salient face is used for information that are important.
To suggest the information is of the same nature but important,
the face uses a different hue with approximately the same
intensity as the default face. This is typically used for links."
:group 'rose)

(defface rose-face-faded nil
"Faded face is for information that are less important.
It is made by using the same hue as the default but with a lesser
intensity than the default. It can be used for comments,
secondary information and also replace italic (which is generally
abused anyway)."
:group 'rose)

(defface rose-face-subtle nil
"Subtle face is used to suggest a physical area on the screen.
It is important to not disturb too strongly the reading of
information and this can be made by setting a very light
background color that is barely perceptible."
:group 'rose)

(defface rose-face-cursor nil
"Identifiying the cursor over the screen is important too"
:group 'rose)

(set-foreground-color rose-color-foreground)
(set-background-color rose-color-background)

(set-face-attribute 'default nil
					:foreground (face-foreground 'default)
					:background (face-background 'default))
(set-face-attribute 'rose-face-default nil
					:foreground (face-foreground 'default)
					:background (face-background 'default))
(set-face-attribute 'rose-face-critical nil
					:foreground (face-background 'default)
					:background rose-color-critical)
(set-face-attribute 'rose-face-popout nil
					:foreground rose-color-popout)
(set-face-attribute 'rose-face-cursor nil
					:foreground rose-cursor)
(if (display-graphic-p)
	(set-face-attribute 'rose-face-strong nil
						:foreground (face-foreground 'rose-face-default)
						:family "Space Mono"  ;; Set your favorite font here :)
						:weight 'light)
  (set-face-attribute 'rose-face-strong nil
						:foreground (face-foreground 'rose-face-default)
						:weight 'bold))
  (set-face-attribute 'rose-face-salient nil
						:foreground rose-color-salient
						:weight 'light)
  (set-face-attribute 'rose-face-faded nil
						:foreground rose-color-faded
						:weight 'light)
  (set-face-attribute 'rose-face-subtle nil
						:background rose-color-subtle)



;; mode-line / header-line

(set-face-attribute 'mode-line nil
					:height 0.75
					:foreground (face-foreground 'rose-face-faded)
					:background (face-background 'rose-face-default)
					:overline nil
					:underline nil
					:box nil)
(set-face-attribute 'mode-line-inactive nil
					:height 0.75
					:foreground (face-foreground 'rose-face-faded)
					:background (face-background 'rose-face-default)
					:overline nil
					:underline nil
					:inherit nil
					:box nil)

  (set-face-attribute 'header-line nil
			  :weight 'light
					  :foreground (face-foreground 'rose-face-default)
					  :background (face-background 'rose-face-subtle)
					  :overline nil
					  :underline nil
					  :box nil
					  :box `(:line-width 1
							 :color ,(face-background 'rose-face-default)
							 :style nil)
					  :inherit nil)

(set-face-attribute 'internal-border nil
					:background (face-background 'rose-face-default))

(if (display-graphic-p)
	(set-face-attribute 'bold nil :weight 'regular)
  (set-face-attribute 'bold nil :weight 'bold))

;; Structural
(set-face 'bold                                     'rose-face-strong)
(set-face 'italic                                    'rose-face-faded)
(set-face 'bold-italic                              'rose-face-strong)
(set-face 'region                                   'rose-face-subtle)
(set-face 'highlight                                'rose-face-subtle)
;;(set-face 'fixed-pitch                                     'default)
(set-face 'fixed-pitch-serif                       'rose-face-default)
(set-face 'variable-pitch                          'rose-face-default)
(set-face 'cursor                                  'rose-face-default)

(set-face-attribute 'cursor nil
					:background (face-foreground 'rose-face-cursor))
(set-face-attribute 'window-divider nil
					:foreground (face-background 'rose-face-default))
(set-face-attribute 'window-divider-first-pixel nil
					:foreground rose-color-highlight)
(set-face-attribute 'window-divider-last-pixel nil
					:foreground rose-color-highlight)


;; Minibuffer / echo area
(dolist (buffer (list " *Minibuf-0*" " *Echo Area 0*"
					  " *Minibuf-1*" " *Echo Area 1*"))
  (when (get-buffer buffer)
	(with-current-buffer buffer
	  (face-remap-add-relative 'default 'rose-face-faded))))


;; Semantic
(set-face 'shadow                                    'rose-face-faded)
(set-face 'success                                 'rose-face-salient)
(set-face 'warning                                  'rose-face-popout)
(set-face 'error                                  'rose-face-critical)
(set-face 'match                                    'rose-face-popout)

;; General
(set-face 'buffer-menu-buffer                       'rose-face-strong)
(set-face 'minibuffer-prompt                        'rose-face-strong)
(set-face 'link                                    'rose-face-salient)
(set-face 'fringe                                    'rose-face-faded)
(set-face-attribute 'fringe nil
					   :foreground (face-background 'rose-face-subtle)
							   :background (face-background 'default))
(set-face 'isearch                                  'rose-face-strong)
(set-face 'isearch-fail                              'rose-face-faded)
(set-face 'lazy-highlight                           'rose-face-subtle)
(set-face 'trailing-whitespace                      'rose-face-subtle)
(set-face 'show-paren-match                         'rose-face-popout)
(set-face 'show-paren-mismatch                           'face-normal)
(set-face-attribute 'tooltip nil                         :height 0.85)
(set-face 'secondary-selection                      'rose-face-subtle)
(set-face 'completions-common-part                  'rose-face-faded)
(set-face 'completions-first-difference             'rose-face-popout)

;; Programmation mode
(set-face 'font-lock-comment-face                    'rose-face-faded)
(set-face 'font-lock-doc-face                        'rose-face-faded)
(set-face 'font-lock-string-face                    'rose-face-popout)
(set-face 'font-lock-constant-face                 'rose-face-salient)
(set-face 'font-lock-warning-face                   'rose-face-popout)
(set-face 'font-lock-function-name-face             'rose-face-strong)
(set-face 'font-lock-variable-name-face             'rose-face-strong)
(set-face 'font-lock-builtin-face                  'rose-face-salient)
(set-face 'font-lock-type-face                     'rose-face-salient)
(set-face 'font-lock-keyword-face                  'rose-face-salient)


;; Highlight line mode
(with-eval-after-load 'hl-line
  (set-face-attribute 'hl-line nil
					  :background rose-color-highlight))

;; Buttons
(with-eval-after-load 'cus-edit
  (set-face-attribute 'custom-button nil
					  :foreground (face-foreground 'rose-face-faded)
					  :background (face-background 'rose-face-default)
					  :box `(:line-width 1
							 :color ,(face-foreground 'rose-face-faded)
							 :style nil))
  (set-face-attribute 'custom-button-mouse nil
					  :foreground (face-foreground 'rose-face-faded)
					  :background (face-background 'rose-face-subtle)
					  :box `(:line-width 1
							 :color ,(face-foreground 'rose-face-faded)
							 :style nil))
  (set-face-attribute 'custom-button-pressed nil
					  :foreground (face-background 'default)
					  :background (face-foreground 'rose-face-salient)
					  :inherit 'rose-face-salient
					  :box `(:line-width 1
							 :color ,(face-foreground 'rose-face-salient)
							 :style nil)
					  :inverse-video nil))

;; Documentation
(with-eval-after-load 'info
  (set-face 'info-menu-header                       'rose-face-strong)
  (set-face 'info-header-node                      'rose-face-default)
  (set-face 'info-index-match                      'rose-face-salient)
  (set-face 'Info-quoted                             'rose-face-faded)
  (set-face 'info-title-1                           'rose-face-strong)
  (set-face 'info-title-2                           'rose-face-strong)
  (set-face 'info-title-3                           'rose-face-strong)
  (set-face 'info-title-4                           'rose-face-strong))

;; Bookmarks
(with-eval-after-load 'bookmark
  (set-face 'bookmark-menu-heading                  'rose-face-strong)
  (set-face 'bookmark-menu-bookmark                'rose-face-salient))

;; Message
(with-eval-after-load 'message
  (set-face 'message-cited-text                      'rose-face-faded)
  (set-face 'message-cited-text-1                    'rose-face-faded)
  (set-face 'message-cited-text-2                    'rose-face-faded)
  (set-face 'message-cited-text-3                    'rose-face-faded)
  (set-face 'message-cited-text-4                    'rose-face-faded)
  (set-face 'message-header-cc                     'rose-face-default)
  (set-face 'message-header-name                    'rose-face-strong)
  (set-face 'message-header-newsgroups             'rose-face-default)
  (set-face 'message-header-other                  'rose-face-default)
  (set-face 'message-header-subject                'rose-face-salient)
  (set-face 'message-header-to                     'rose-face-salient)
  (set-face 'message-header-xheader                'rose-face-default)
  (set-face 'message-mml                            'rose-face-popout)
  (set-face 'message-separator                       'rose-face-faded))

;; Outline
(with-eval-after-load 'outline
  (set-face 'outline-1                              'rose-face-strong)
  (set-face 'outline-2                              'rose-face-strong)
  (set-face 'outline-3                              'rose-face-strong)
  (set-face 'outline-4                              'rose-face-strong)
  (set-face 'outline-5                              'rose-face-strong)
  (set-face 'outline-6                              'rose-face-strong)
  (set-face 'outline-7                              'rose-face-strong)
  (set-face 'outline-8                              'rose-face-strong))

;; Interface
(with-eval-after-load 'cus-edit
  (set-face 'widget-field                           'rose-face-subtle)
  (set-face 'widget-button                          'rose-face-strong)
  (set-face 'widget-single-line-field               'rose-face-subtle)
  (set-face 'custom-group-subtitle                  'rose-face-strong)
  (set-face 'custom-group-tag                       'rose-face-strong)
  (set-face 'custom-group-tag-1                     'rose-face-strong)
  (set-face 'custom-comment                          'rose-face-faded)
  (set-face 'custom-comment-tag                      'rose-face-faded)
  (set-face 'custom-changed                        'rose-face-salient)
  (set-face 'custom-modified                       'rose-face-salient)
  (set-face 'custom-face-tag                        'rose-face-strong)
  (set-face 'custom-variable-tag                   'rose-face-default)
  (set-face 'custom-invalid                         'rose-face-popout)
  (set-face 'custom-visibility                     'rose-face-salient)
  (set-face 'custom-state                          'rose-face-salient)
  (set-face 'custom-link                           'rose-face-salient))

;; Package
(with-eval-after-load 'package
  (set-face 'package-description                   'rose-face-default)
  (set-face 'package-help-section-name             'rose-face-default)
  (set-face 'package-name                          'rose-face-salient)
  (set-face 'package-status-avail-obso               'rose-face-faded)
  (set-face 'package-status-available              'rose-face-default)
  (set-face 'package-status-built-in               'rose-face-salient)
  (set-face 'package-status-dependency             'rose-face-salient)
  (set-face 'package-status-disabled                 'rose-face-faded)
  (set-face 'package-status-external               'rose-face-default)
  (set-face 'package-status-held                   'rose-face-default)
  (set-face 'package-status-incompat                 'rose-face-faded)
  (set-face 'package-status-installed              'rose-face-salient)
  (set-face 'package-status-new                    'rose-face-default)
  (set-face 'package-status-unsigned               'rose-face-default)

  ;; Button face is hardcoded, we have to redefine the relevant
  ;; function
  (defun package-make-button (text &rest properties)
	"Insert button labeled TEXT with button PROPERTIES at point.
PROPERTIES are passed to `insert-text-button', for which this
function is a convenience wrapper used by `describe-package-1'."
	(let ((button-text (if (display-graphic-p)
						   text (concat "[" text "]")))
		  (button-face (if (display-graphic-p)
						   '(:box `(:line-width 1
									:color ,rose-color-subtle
									:style nil)
								  :foreground rose-color-faded
								  :background rose-color-subtle)
						 'link)))
	  (apply #'insert-text-button button-text
			 'face button-face 'follow-link t properties))))

;; Flyspell
(with-eval-after-load 'flyspell
  (set-face 'flyspell-duplicate                     'rose-face-popout)
  (set-face 'flyspell-incorrect                     'rose-face-popout))

;; Ido
(with-eval-after-load 'ido
  (set-face 'ido-first-match                       'rose-face-salient)
  (set-face 'ido-only-match                          'rose-face-faded)
  (set-face 'ido-subdir                             'rose-face-strong))

;; Diff
(with-eval-after-load 'diff-mode
  (set-face 'diff-header                             'rose-face-faded)
  (set-face 'diff-file-header                       'rose-face-strong)
  (set-face 'diff-context                          'rose-face-default)
  (set-face 'diff-removed                            'rose-face-faded)
  (set-face 'diff-changed                           'rose-face-popout)
  (set-face 'diff-added                            'rose-face-salient)
  (set-face 'diff-refine-added                    '(rose-face-salient
													 rose-face-strong))
  (set-face 'diff-refine-changed                    'rose-face-popout)
  (set-face 'diff-refine-removed                    'rose-face-faded)
  (set-face-attribute     'diff-refine-removed nil :strike-through t))

;; Term
(with-eval-after-load 'term
  (set-face 'term-bold                                   'rose-face-strong)
  (set-face-attribute 'term-color-black nil
					  :foreground (face-foreground 'rose-face-default)
					  :background (face-foreground 'rose-face-default))
  (set-face-attribute 'term-color-white nil
					  :foreground (face-background 'rose-face-default)
					  :background (face-background 'rose-face-default))
  (set-face-attribute 'term-color-blue nil
					  :foreground "#31748f"
					  :background "#3783a1")
  (set-face-attribute 'term-color-cyan nil
					  :foreground "#9ccfd8"
					  :background "#89c6d0")
  (set-face-attribute 'term-color-green nil
					  :foreground "#706e86"
					  :background "#7c7a92")
  (set-face-attribute 'term-color-magenta nil
					  :foreground "#c4a7e7"
					  :background "#b692e1")
  (set-face-attribute 'term-color-red nil
					  :foreground "#eb6f92"
					  :background "#ee85a2")
  (set-face-attribute 'term-color-yellow nil
					  :foreground "#f6c177"
					  :background "#f4b65f")) ;; rose pine color

(with-eval-after-load 'calendar
  (set-face 'calendar-today                         'rose-face-strong))

;; org-agenda
(with-eval-after-load 'org-agenda
  (set-face 'org-agenda-calendar-event             'roseface-default)
  (set-face 'org-agenda-calendar-sexp              'rose-face-salient)
  (set-face 'org-agenda-clocking                     'rose-face-faded)
  (set-face 'org-agenda-column-dateline              'rose-face-faded)
  (set-face 'org-agenda-current-time                'rose-face-strong)
  (set-face 'org-agenda-date                        'rose-face-salient)
  (set-face 'org-agenda-date-today                  '(rose-face-strong
													 rose-face-salient))
  (set-face 'org-agenda-date-weekend                 'rose-face-faded)
  (set-face 'org-agenda-diary                        'rose-face-faded)
  (set-face 'org-agenda-dimmed-todo-face             'rose-face-faded)
  (set-face 'org-agenda-done                         'rose-face-faded)
  (set-face 'org-agenda-filter-category              'rose-face-faded)
  (set-face 'org-agenda-filter-effort                'rose-face-faded)
  (set-face 'org-agenda-filter-regexp                'rose-face-faded)
  (set-face 'org-agenda-filter-tags                  'rose-face-faded)
;;  (set-face 'org-agenda-property-face                'rose-face-faded)
  (set-face 'org-agenda-restriction-lock             'rose-face-faded)
  (set-face 'org-agenda-structure                   'rose-face-strong))

;; org mode
(with-eval-after-load 'org
  (set-face 'org-archived                            'rose-face-faded)
  (set-face 'org-block                               'rose-face-faded)
  (set-face 'org-block-begin-line                    'rose-face-faded)
  (set-face 'org-block-end-line                      'rose-face-faded)
  (set-face 'org-checkbox                            'rose-face-faded)
  (set-face 'org-checkbox-statistics-done            'rose-face-faded)
  (set-face 'org-checkbox-statistics-todo            'rose-face-faded)
  (set-face 'org-clock-overlay                       'rose-face-faded)
  (set-face 'org-code                                'rose-face-faded)
  (set-face 'org-column                              'rose-face-faded)
  (set-face 'org-column-title                        'rose-face-faded)
  (set-face 'org-date                                'rose-face-faded)
  (set-face 'org-date-selected                       'rose-face-faded)
  (set-face 'org-default                             'rose-face-faded)
  (set-face 'org-document-info                       'rose-face-faded)
  (set-face 'org-document-info-keyword               'rose-face-faded)
  (set-face 'org-document-title                      'rose-face-faded)
  (set-face 'org-done                              'rose-face-default)
  (set-face 'org-drawer                              'rose-face-faded)
  (set-face 'org-ellipsis                            'rose-face-faded)
  (set-face 'org-footnote                            'rose-face-faded)
  (set-face 'org-formula                             'rose-face-faded)
  (set-face 'org-headline-done                       'rose-face-faded)
  ;; (set-face 'org-hide                             'rose-face-faded)
  ;; (set-face 'org-indent                           'rose-face-faded)
  (set-face 'org-latex-and-related                   'rose-face-faded)
  (set-face 'org-level-1                            'rose-face-strong)
  (set-face 'org-level-2                            'rose-face-strong)
  (set-face 'org-level-3                           'rose-face-salient)
  (set-face 'org-level-4                           'rose-face-default)
  (set-face 'org-level-5                           'rose-face-default)
  (set-face 'org-level-6                           'rose-face-default)
  (set-face 'org-level-7                           'rose-face-default)
  (set-face 'org-level-8                           'rose-face-default)
  (set-face 'org-link                              'rose-face-salient)
  (set-face 'org-list-dt                             'rose-face-faded)
  (set-face 'org-macro                               'rose-face-faded)
  (set-face 'org-meta-line                           'rose-face-faded)
  (set-face 'org-mode-line-clock                     'rose-face-faded)
  (set-face 'org-mode-line-clock-overrun             'rose-face-faded)
  (set-face 'org-priority                            'rose-face-faded)
  (set-face 'org-property-value                      'rose-face-faded)
  (set-face 'org-quote                               'rose-face-faded)
  (set-face 'org-scheduled                           'rose-face-faded)
  (set-face 'org-scheduled-previously                'rose-face-faded)
  (set-face 'org-scheduled-today                     'rose-face-faded)
  (set-face 'org-sexp-date                           'rose-face-faded)
  (set-face 'org-special-keyword                     'rose-face-faded)
  (set-face 'org-table                               'rose-face-faded)
  (set-face 'org-tag                                 'rose-face-faded)
  (set-face 'org-tag-group                           'rose-face-faded)
  (set-face 'org-target                              'rose-face-faded)
  (set-face 'org-time-grid                           'rose-face-faded)
  (set-face 'org-todo                              'rose-face-salient)
  (set-face 'org-upcoming-deadline                   'rose-face-faded)
  (set-face 'org-verbatim                            'rose-face-faded)
  (set-face 'org-verse                               'rose-face-faded)
  (set-face 'org-warning                            'rose-face-popout))

;; Mu4e
(with-eval-after-load 'mu4e
  (set-face 'mu4e-attach-number-face                'rose-face-strong)
  (set-face 'mu4e-cited-1-face                       'rose-face-faded)
  (set-face 'mu4e-cited-2-face                       'rose-face-faded)
  (set-face 'mu4e-cited-3-face                       'rose-face-faded)
  (set-face 'mu4e-cited-4-face                       'rose-face-faded)
  (set-face 'mu4e-cited-5-face                       'rose-face-faded)
  (set-face 'mu4e-cited-6-face                       'rose-face-faded)
  (set-face 'mu4e-cited-7-face                       'rose-face-faded)
  (set-face 'mu4e-compose-header-face                'rose-face-faded)
  (set-face 'mu4e-compose-separator-face             'rose-face-faded)
  (set-face 'mu4e-contact-face                     'rose-face-salient)
  (set-face 'mu4e-context-face                       'rose-face-faded)
  (set-face 'mu4e-draft-face                         'rose-face-faded)
  (set-face 'mu4e-flagged-face                      'rose-face-popout)
  (set-face 'mu4e-footer-face                        'rose-face-faded)
  (set-face 'mu4e-forwarded-face                     'rose-face-faded)
  (set-face 'mu4e-header-face                      'rose-face-default)
  (set-face 'mu4e-header-highlight-face                      'hl-line)
  (set-face 'mu4e-header-key-face                   'rose-face-strong)
  (set-face 'mu4e-header-marks-face                  'rose-face-faded)
  (set-face 'mu4e-header-title-face                 'rose-face-strong)
  (set-face 'mu4e-header-value-face                'rose-face-default)
  (set-face 'mu4e-highlight-face                    'rose-face-popout)
  (set-face 'mu4e-link-face                        'rose-face-salient)
  (set-face 'mu4e-modeline-face                      'rose-face-faded)
  (set-face 'mu4e-moved-face                         'rose-face-faded)
  (set-face 'mu4e-ok-face                            'rose-face-faded)
  (set-face 'mu4e-region-code                        'rose-face-faded)
  (set-face 'mu4e-replied-face                     'rose-face-default)
  (set-face 'mu4e-special-header-value-face        'rose-face-default)
  (set-face 'mu4e-system-face                        'rose-face-faded)
  (set-face 'mu4e-title-face                        'rose-face-strong)
  (set-face 'mu4e-trashed-face                       'rose-face-faded)
  (set-face 'mu4e-unread-face                       'rose-face-strong)
  (set-face 'mu4e-url-number-face                    'rose-face-faded)
  (set-face 'mu4e-view-body-face                   'rose-face-default)
  (set-face 'mu4e-warning-face                      'rose-face-popout))

;; Elfeed
(with-eval-after-load 'elfeed
  (set-face 'elfeed-log-date-face                    'rose-face-faded)
  (set-face 'elfeed-log-info-level-face            'rose-face-default)
  (set-face 'elfeed-log-debug-level-face           'rose-face-default)
  (set-face 'elfeed-log-warn-level-face             'rose-face-popout)
  (set-face 'elfeed-log-error-level-face            'rose-face-popout)
  (set-face 'elfeed-search-tag-face                  'rose-face-faded)
  (set-face 'elfeed-search-date-face                 'rose-face-faded)
  (set-face 'elfeed-search-feed-face               'rose-face-salient)
  (set-face 'elfeed-search-filter-face               'rose-face-faded)
  (set-face 'elfeed-search-last-update-face        'rose-face-salient)
  (set-face 'elfeed-search-title-face              'rose-face-default)
  (set-face 'elfeed-search-tag-face                  'rose-face-faded)
  (set-face 'elfeed-search-unread-count-face        'rose-face-strong)
  (set-face 'elfeed-search-unread-title-face        'rose-face-strong))


;; RST mode
(with-eval-after-load 'rst
  (set-face 'rst-adornment                           'rose-face-faded)
  (set-face 'rst-block                             'rose-face-default)
  (set-face 'rst-comment                             'rose-face-faded)
  (set-face 'rst-definition                        'rose-face-salient)
  (set-face 'rst-directive                         'rose-face-salient)
  (set-face 'rst-emphasis1                           'rose-face-faded)
  (set-face 'rst-emphasis2                          'rose-face-strong)
  (set-face 'rst-external                          'rose-face-salient)
  (set-face 'rst-level-1                            'rose-face-strong)
  (set-face 'rst-level-2                            'rose-face-strong)
  (set-face 'rst-level-3                            'rose-face-strong)
  (set-face 'rst-level-4                            'rose-face-strong)
  (set-face 'rst-level-5                            'rose-face-strong)
  (set-face 'rst-level-6                            'rose-face-strong)
  (set-face 'rst-literal                           'rose-face-salient)
  (set-face 'rst-reference                         'rose-face-salient)
  (set-face 'rst-transition                        'rose-face-default))

;; Markdown mode
(with-eval-after-load 'markdown-mode
  (set-face 'markdown-blockquote-face              'rose-face-default)
  (set-face 'markdown-bold-face                     'rose-face-strong)
  (set-face 'markdown-code-face                    'rose-face-default)
  (set-face 'markdown-comment-face                   'rose-face-faded)
  (set-face 'markdown-footnote-marker-face         'rose-face-default)
  (set-face 'markdown-footnote-text-face           'rose-face-default)
  (set-face 'markdown-gfm-checkbox-face            'rose-face-default)
  (set-face 'markdown-header-delimiter-face          'rose-face-faded)
  (set-face 'markdown-header-face                   'rose-face-strong)
  (set-face 'markdown-header-face-1                 'rose-face-strong)
  (set-face 'markdown-header-face-2                 'rose-face-strong)
  (set-face 'markdown-header-face-3                 'rose-face-strong)
  (set-face 'markdown-header-face-4                 'rose-face-strong)
  (set-face 'markdown-header-face-5                 'rose-face-strong)
  (set-face 'markdown-header-face-6                'rose-face-strong)
  (set-face 'markdown-header-rule-face             'rose-face-default)
  (set-face 'markdown-highlight-face               'rose-face-default)
  (set-face 'markdown-hr-face                      'rose-face-default)
  (set-face 'markdown-html-attr-name-face          'rose-face-default)
  (set-face 'markdown-html-attr-value-face         'rose-face-default)
  (set-face 'markdown-html-entity-face             'rose-face-default)
  (set-face 'markdown-html-tag-delimiter-face      'rose-face-default)
  (set-face 'markdown-html-tag-name-face           'rose-face-default)
  (set-face 'markdown-inline-code-face              'rose-face-popout)
  (set-face 'markdown-italic-face                    'rose-face-faded)
  (set-face 'markdown-language-info-face           'rose-face-default)
  (set-face 'markdown-language-keyword-face        'rose-face-default)
  (set-face 'markdown-line-break-face              'rose-face-default)
  (set-face 'markdown-link-face                    'rose-face-salient)
  (set-face 'markdown-link-title-face              'rose-face-default)
  (set-face 'markdown-list-face                      'rose-face-faded)
  (set-face 'markdown-markup-face                    'rose-face-faded)
  (set-face 'markdown-math-face                    'rose-face-default)
  (set-face 'markdown-metadata-key-face              'rose-face-faded)
  (set-face 'markdown-metadata-value-face            'rose-face-faded)
  (set-face 'markdown-missing-link-face            'rose-face-default)
  (set-face 'markdown-plain-url-face               'rose-face-default)
  (set-face 'markdown-pre-face                     'rose-face-default)
  (set-face 'markdown-reference-face               'rose-face-salient)
  (set-face 'markdown-strike-through-face            'rose-face-faded)
  (set-face 'markdown-table-face                   'rose-face-default)
  (set-face 'markdown-url-face                     'rose-face-salient))

;; Ivy
(with-eval-after-load 'ivy
  (set-face 'ivy-action                              'rose-face-faded)
  (set-face 'ivy-completions-annotations             'rose-face-faded)
  (set-face 'ivy-confirm-face                        'rose-face-faded)
  (set-face 'ivy-current-match    '(rose-face-strong rose-face-subtle))
  (set-face 'ivy-cursor                             'rose-face-strong)
  (set-face 'ivy-grep-info                          'rose-face-strong)
  (set-face 'ivy-grep-line-number                    'rose-face-faded)
  (set-face 'ivy-highlight-face                     'rose-face-strong)
  (set-face 'ivy-match-required-face                 'rose-face-faded)
  (set-face 'ivy-minibuffer-match-face-1           'rose-face-salient)
  (set-face 'ivy-minibuffer-match-face-2           'rose-face-salient)
  (set-face 'ivy-minibuffer-match-face-3           'rose-face-salient)
  (set-face 'ivy-minibuffer-match-face-4           'rose-face-salient)
  (set-face 'ivy-minibuffer-match-highlight         'rose-face-strong)
  (set-face 'ivy-modified-buffer                     'rose-face-faded)
  (set-face 'ivy-modified-outside-buffer             'rose-face-faded)
  (set-face 'ivy-org                                 'rose-face-faded)
  (set-face 'ivy-prompt-match                        'rose-face-faded)
  (set-face 'ivy-remote                            'rose-face-default)
  (set-face 'ivy-separator                           'rose-face-faded)
  (set-face 'ivy-subdir                              'rose-face-faded)
  (set-face 'ivy-virtual                             'rose-face-faded)
  (set-face 'ivy-yanked-word                         'rose-face-faded)
)

(provide 'rose-pine-theme)
