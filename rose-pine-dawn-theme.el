;;; rose-pine-dawn-theme.el --- All natural pine, faux fur and a bit of soho vibes for the classy minimalist.

;; Authors: Israel Romero <@caelie>
;; URL: http://github.com/caelie/rose-pine-emacs
;; Version: 0.2
;; Package-Requires: ((autothemer "0.2"))

;;; Commentary:
;;  All natural pine, faux fur and a bit of soho vibes for the classy minimalist

;;; Uses Autothemer from 0.2 and is based on nano-emacs for the syntax highlighting

;;; Code:

(require 'autothemer)

(unless (>= emacs-major-version 26)
  (error "Requires Emacs 26 or later"))

(autothemer-deftheme
 rose-pine-dawn "All natural pine,  faux fur and a bit of soho vibes for the classy minimalist."

 ((((class color) (min-colors #xFFFFFF)))                        ;; GUI mode

  ;; Rose Pine Dawn
  (text       "#575279")  ;; foreground
  (base       "#faf4ed")  ;; background
  (high       "#6e6a86")  ;; highlight
  (love       "#b4637a")  ;; critical
  (iris       "#907aa9")  ;; salient
  (foam       "#56949f")  ;; strong
  (rose       "#d7827e")  ;; popout
  (subtle     "#6e6a86")  ;; subtle
  (faded      "#cecaed")  ;; faded
  (cursor     "#286983")) ;; cursor


  ;; Faces
 ((default                   (:background base :foreground text))

  ;; Structural
  (bold                      (:foreground foam))
  (italic                    (:foreground faded))
  (bold-italic               (:foreground foam))
  (region                    (:background subtle))
  (highlight                 (:background subtle))
  (fixed-pitch-serif         (:foregrund foam))
  (variable-pitch            (:foregroud foam))
  (cursor                    (:background cursor))

  ;; Modeline
  (mode-line                 (:background base :foreground text))
  (mode-line-inactive        (:background base :foreground faded))

  ;; Windows
  (window-divider (:background foam))
  (window-divider-first-pixel  (:foreground high))
  (window-divider-last-pixel   (:foreground high))

  ;; Semantic
  (shadow                                    (:foreground faded))
  (success                                   (:foreground iris))
  (warning                                   (:foreground rose))
  (error                                     (:foreground love))
  (match                                     (:foreground rose))

  ;; General
  (buffer-menu-buffer                        (:foreground foam))
  (minibuffer-prompt                         (:foreground foam))
  (link                                      (:foreground iris))
  (fringe                                    (:foreground faded))

  (isearch                                   (:foreground foam))
  (isearch-fail                              (:foreground faded))
  (lazy-highlight                            (:foreground subtle))
  (trailing-whitespace                       (:foreground subtle))
  (show-paren-match                          (:foreground rose))
  (tooltip                                   (:height 0.85))
  (secondary-selection                       (:foreground subtle))
  (completions-common-part                   (:foreground faded))
  (completions-first-difference              (:foreground rose))


  ;; Programmation mode
  (font-lock-comment-face                    (:foreground faded))
  (font-lock-doc-face                        (:foreground faded))
  (font-lock-string-face                     (:foreground rose))
  (font-lock-constant-face                   (:foreground iris))
  (font-lock-warning-face                    (:foreground rose))
  (font-lock-function-name-face              (:foreground foam))
  (font-lock-variable-name-face              (:foreground foam))
  (font-lock-builtin-face                    (:foreground iris))
  (font-lock-type-face                       (:foreground iris))
  (font-lock-keyword-face                    (:foreground iris))

  ;; Highlight line mode
  (with-eval-after-load "hl-line"
  (set-face-attribute 'hl-line nil
                                          :background high))

  ;; Buttons
  (with-eval-after-load "cus-edit"
  (set-face-attribute 'custom-button nil
                                          :foreground (face-foreground 'faded)
                                          :background (face-background 'default)
                                          :box `(:line-width 1
                                                         :color ,(face-foreground 'faded)
                                                         :style nil))
  (set-face-attribute 'custom-button-mouse nil
                                          :foreground (face-foreground 'faded)
                                          :background (face-background 'subtle)
                                          :box `(:line-width 1
                                                         :color ,(face-foreground 'faded)
                                                         :style nil))
  (set-face-attribute 'custom-button-pressed nil
                                          :foreground (face-background 'default)
                                          :background (face-foreground 'iris)
                                          :inherit 'iris
                                          :box `(:line-width 1
                                                         :color ,(face-foreground 'iris)
                                                         :style nil)
                                          :inverse-video nil))

  ;; Documentation
  (with-eval-after-load "info"
    (info-menu-header                      (:foreground foam))
    (info-header-node                      (:foreground text))
    (info-index-match                      (:foreground iris))
    (Info-quoted                           (:foreground faded))
    (info-title-1                          (:foreground foam))
    (info-title-2                          (:foreground foam))
    (info-title-3                          (:foreground foam))
    (info-title-4                          (:foreground foam)))

 ;; Bookmarks
  (with-eval-after-load "bookmark"
    (bookmark-menu-heading              (:foreground foam))
    (bookmark-menu-bookmark             (:foreground iris)))

  ;; Message
  (with-eval-after-load "message"
    (message-cited-text                    (:foreground faded))
    (message-cited-text-1                  (:foreground faded))
    (message-cited-text-2                  (:foreground faded))
    (message-cited-text-3                  (:foreground faded))
    (message-cited-text-4                  (:foreground faded))
    (message-header-cc                     (:foreground text))
    (message-header-name                   (:foreground foam))
    (message-header-newsgroups             (:foreground text))
    (message-header-other                  (:foreground text))
    (message-header-subject                (:foreground iris))
    (message-header-to                     (:foreground iris))
    (message-header-xheader                (:foreground text))
    (message-mml                           (:foreground rose))
    (message-separator                     (:foreground faded)))

  ;; Outline
  (with-eval-after-load "outline"
    (outline-1                              (:foreground foam))
    (outline-2                              (:foreground foam))
    (outline-3                              (:foreground foam))
    (outline-4                              (:foreground foam))
    (outline-5                              (:foreground foam))
    (outline-6                              (:foreground foam))
    (outline-7                              (:foreground foam))
    (outline-8                              (:foreground foam)))

  ;; Interface
  (with-eval-after-load "cus-edit"
    (widget-field                        (:foreground subtle))
    (widget-button                       (:foreground foam))
    (widget-single-line-field            (:foreground subtle))
    (custom-group-subtitle               (:foreground foam))
    (custom-group-tag                    (:foreground foam))
    (custom-group-tag-1                  (:foreground foam))
    (custom-comment                      (:foreground faded))
    (custom-comment-tag                  (:foreground faded))
    (custom-changed                      (:foreground iris))
    (custom-modified                     (:foreground iris))
    (custom-face-tag                     (:foreground foam))
    (custom-variable-tag                 (:foreground text))
    (custom-invalid                      (:foreground love))
    (custom-visibility                   (:foreground rose))
    (custom-state                        (:foreground iris))
    (custom-link                         (:foreground iris)))

  ;;Package
  (with-eval-after-load "package"
    (package-description                   (:foreground text))
    (package-help-section-name             (:foreground text))
    (package-name                          (:foreground iris))
    (package-status-avail-obso             (:foreground faded))
    (package-status-available              (:foreground text))
    (package-status-built-in               (:foreground iris))
    (package-status-dependency             (:foreground iris))
    (package-status-disabled               (:foreground faded))
    (package-status-external               (:foreground text))
    (package-status-held                   (:foreground text))
    (package-status-incompat               (:foreground faded))
    (package-status-installed              (:foreground iris))
    (package-status-new                    (:foreground text))
    (package-status-unsigned               (:foreground text)))


  ;; Flyspell
  (with-eval-after-load "flyspell"
    (flyspell-duplicate                     (:foreground rose))
    (flyspell-incorrect                     (:foreground rose)))

  ;; Ido
  (with-eval-after-load "ido"
    (ido-first-match                        (:foreground iris))
    (ido-only-match                         (:foreground faded))
    (ido-subdir                             (:foreground foam))

  ;; Eros and Rainbow-delimiters
  (eros-result-overlay-face                 (:foreground  text :background base))
  (rainbow-delimiters-base-error-face       (:foreground  love :background base))
  (rainbow-delimiters-depth-1-face          (:foreground  foam))
  (rainbow-delimiters-depth-2-face          (:foreground  text))
  (rainbow-delimiters-depth-3-face          (:foreground  text))
  (rainbow-delimiters-depth-4-face          (:foreground  text))
  (rainbow-delimiters-depth-5-face          (:foreground  text))
  (rainbow-delimiters-depth-6-face          (:foreground  text))
  (rainbow-delimiters-depth-7-face          (:foreground  text))
  (rainbow-delimiters-depth-8-face          (:foreground  text))
  (rainbow-delimiters-depth-9-face          (:foreground  text))


  ;; Diff
  (with-eval-after-load "diff-mode"
    (diff-header                                      (:foreground faded))
    (diff-file-header                                 (:foreground foam))
    (diff-context                                     (:foreground text)))
    (diff-removed                                     (:foreground faded))
    (diff-changed                                     (:foreground rose))
    (diff-added                                       (:foreground iris))
    (diff-refine-added                                (:background iris :foreground foam))
    (set-face 'diff-refine-changed                    (:foreground rose))
    (set-face 'diff-refine-removed                    (:foreground faded))
    (set-face-attribute     'diff-refine-removed nil :strike-through t))

;; Term
(with-eval-after-load "term"
  (term-bold                                   (:foreground foam))
  (set-face-attribute 'term-color-black nil
                                          :foreground (face-foreground 'text)
                                          :background (face-foreground 'text))
  (set-face-attribute 'term-color-white nil
                                          :foreground (face-background 'text)
                                          :background (face-background 'text))
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
                                          :background "#f4b65f"))

(with-eval-after-load "calendar"
  (calendar-today                         (:foreground foam)))



  ;; org-agenda
  (with-eval-after-load "org-agenda"
    (org-agenda-calendar-event              (:foreground text))
    (org-agenda-calendar-sexp               (:foreground iris))
    (org-agenda-clocking                    (:foreground faded))
    (org-agenda-column-dateline             (:foreground faded))
    (org-agenda-current-time                (:foreground foam))
    (org-agenda-date                        (:foreground iris))
    (org-agenda-date-today                  (:background foam :foreground iris))
    (org-agenda-date-weekend                (:foreground faded))
    (org-agenda-diary                       (:foreground faded))
    (org-agenda-dimmed-todo-face            (:foreground faded))
    (org-agenda-done                        (:foreground faded))
    (org-agenda-filter-category             (:foreground faded))
    (org-agenda-filter-effort               (:foreground faded))
    (org-agenda-filter-regexp               (:foreground faded))
    (org-agenda-filter-tags                 (:foreground faded))
    (org-agenda-restriction-lock            (:foreground faded))
    (org-agenda-structure                   (:foreground foam)))

  ;; org mode
  (with-eval-after-load "org"
    (org-archived                            (:foreground faded))
    (org-block                               (:foreground faded))
    (org-block-begin-line                    (:foreground faded))
    (org-block-end-line                      (:foreground faded))
    (org-checkbox                            (:foreground faded))
    (org-checkbox-statistics-done            (:foreground faded))
    (org-checkbox-statistics-todo            (:foreground faded))
    (org-clock-overlay                       (:foreground faded))
    (org-code                                (:foreground faded))
    (org-column                              (:foreground faded))
    (org-column-title                        (:foreground faded))
    (org-date                                (:foreground faded))
    (org-date-selected                       (:foreground faded))
    (org-default                             (:foreground faded))
    (org-document-info                       (:foreground faded))
    (org-document-info-keyword               (:foreground faded))
    (org-document-title                      (:foreground faded))
    (org-done                                (:foreground text))
    (org-drawer                              (:foreground faded))
    (org-ellipsis                            (:foreground faded))
    (org-footnote                            (:foreground faded))
    (org-formula                             (:foreground faded))
    (org-headline-done                       (:foreground faded))
    (org-latex-and-related                   (:foreground faded))
    (org-level-1                             (:foreground foam))
    (org-level-2                             (:foreground foam))
    (org-level-3                             (:foreground iris))
    (org-level-4                             (:foreground text))
    (org-level-5                             (:foreground text))
    (org-level-6                             (:foreground text))
    (org-level-7                             (:foreground text))
    (org-level-8                             (:foreground text))
    (org-link                                (:foreground iris))
    (org-list-dt                             (:foreground faded))
    (org-macro                               (:foreground faded))
    (org-meta-line                           (:foreground faded))
    (org-mode-line-clock                     (:foreground faded))
    (org-mode-line-clock-overrun             (:foreground faded))
    (org-priority                            (:foreground faded))
    (org-property-value                      (:foreground faded))
    (org-quote                               (:foreground faded))
    (org-scheduled                           (:foreground faded))
    (org-scheduled-previously                (:foreground faded))
    (org-scheduled-today                     (:foreground faded))
    (org-sexp-date                           (:foreground faded))
    (org-special-keyword                     (:foreground faded))
    (org-table                               (:foreground faded))
    (org-tag                                 (:foreground faded))
    (org-tag-group                           (:foreground faded))
    (org-target                              (:foreground faded))
    (org-time-grid                           (:foreground faded))
    (org-todo                                (:foreground iris))
    (org-upcoming-deadline                   (:foreground faded))
    (org-verbatim                            (:foreground faded))
    (org-verse                               (:foreground faded))
    (org-warning                             (:foreground rose)))

  ;; Mu4e
  (with-eval-after-load "mu4e"
    (mu4e-attach-number-face                 (:foreground foam))
    (mu4e-cited-1-face                       (:foreground faded))
    (mu4e-cited-2-face                       (:foreground faded))
    (mu4e-cited-3-face                       (:foreground faded))
    (mu4e-cited-4-face                       (:foreground faded))
    (mu4e-cited-5-face                       (:foreground faded))
    (mu4e-cited-6-face                       (:foreground faded))
    (mu4e-cited-7-face                       (:foreground faded))
    (mu4e-compose-header-face                (:foreground faded))
    (mu4e-compose-separator-face             (:foreground faded))
    (mu4e-contact-face                       (:foreground iris))
    (mu4e-context-face                       (:foreground faded))
    (mu4e-draft-face                         (:foreground faded))
    (mu4e-flagged-face                       (:foreground rose))
    (mu4e-footer-face                        (:foreground faded))
    (mu4e-forwarded-face                     (:foreground faded))
    (mu4e-header-face                        (:foreground text))
    (mu4e-header-highlight-face              (:inherit  'hl-line))
    (mu4e-header-key-face                    (:foreground foam))
    (mu4e-header-marks-face                  (:foreground faded))
    (mu4e-header-title-face                  (:foreground foam))
    (mu4e-header-value-face                  (:foreground text))
    (mu4e-highlight-face                     (:foreground rose))
    (mu4e-link-face                          (:foreground iris))
    (mu4e-modeline-face                      (:foreground faded))
    (mu4e-moved-face                         (:foreground faded))
    (mu4e-ok-face                            (:foreground faded))
    (mu4e-region-code                        (:foreground faded))
    (mu4e-replied-face                       (:foreground text))
    (mu4e-special-header-value-face          (:foreground text))
    (mu4e-system-face                        (:foreground faded))
    (mu4e-title-face                         (:foreground foam))
    (mu4e-trashed-face                       (:foreground faded))
    (mu4e-unread-face                        (:foreground foam))
    (mu4e-url-number-face                    (:foreground faded))
    (mu4e-view-body-face                     (:foreground text))
    (mu4e-warning-face                       (:foreground rose)))

  ;; Elfeed
  (with-eval-after-load "elfeed"
    (elfeed-log-date-face                              (:foreground faded))
    (elfeed-log-info-level-face                        (:foreground text))
    (elfeed-log-debug-level-face                       (:foreground text))
    (elfeed-log-warn-level-face                        (:foreground rose))
    (elfeed-log-error-level-face                       (:foreground rose))
    (elfeed-search-tag-face                            (:foreground faded))
    (elfeed-search-date-face                           (:foreground faded))
    (elfeed-search-feed-face                           (:foreground iris))
    (elfeed-search-filter-face                         (:foreground faded))
    (elfeed-search-last-update-face                    (:foreground iris))
    (elfeed-search-title-face                          (:foreground text))
    (elfeed-search-tag-face                            (:foreground faded))
    (elfeed-search-unread-count-face                   (:foreground foam))
    (elfeed-search-unread-title-face                   (:foreground foam)))


  ;; RST mode
  (with-eval-after-load "rst"
    (rst-adornment                                    (:foreground faded))
    (rst-block                                        (:foreground text))
    (rst-comment                                      (:foreground faded))
    (rst-definition                                   (:foreground iris))
    (rst-directive                                    (:foreground iris))
    (rst-emphasis1                                    (:foreground faded))
    (rst-emphasis2                                    (:foreground foam))
    (rst-external                                     (:foreground iris))
    (rst-level-1                                      (:foreground foam))
    (rst-level-2                                      (:foreground foam))
    (rst-level-3                                      (:foreground foam))
    (rst-level-4                                      (:foreground foam))
    (rst-level-5                                      (:foreground foam))
    (rst-level-6                                      (:foreground foam))
    (rst-literal                                      (:foreground iris))
    (rst-reference                                    (:foreground iris))
    (rst-transition                                   (:foreground text)))

  ;; Markdown mode
  (with-eval-after-load "markdown-mode"
    (markdown-blockquote-face              (:foreground text))
    (markdown-bold-face                    (:foreground foam))
    (markdown-code-face                    (:foreground text))
    (markdown-comment-face                 (:foreground faded))
    (markdown-footnote-marker-face         (:foreground text))
    (markdown-footnote-text-face           (:foreground text))
    (markdown-gfm-checkbox-face            (:foreground text))
    (markdown-header-delimiter-face        (:foreground faded))
    (markdown-header-face                  (:foreground foam))
    (markdown-header-face-1                (:foreground foam))
    (markdown-header-face-2                (:foreground foam))
    (markdown-header-face-3                (:foreground foam))
    (markdown-header-face-4                (:foreground foam))
    (markdown-header-face-5                (:foreground foam))
    (markdown-header-face-6                (:foreground foam))
    (markdown-header-rule-face             (:foreground text))
    (markdown-highlight-face               (:foreground text))
    (markdown-hr-face                      (:foreground text))
    (markdown-html-attr-name-face          (:foreground text))
    (markdown-html-attr-value-face         (:foreground text))
    (markdown-html-entity-face             (:foreground text))
    (markdown-html-tag-delimiter-face      (:foreground text))
    (markdown-html-tag-name-face           (:foreground text))
    (markdown-inline-code-face             (:foreground rose))
    (markdown-italic-face                  (:foreground faded))
    (markdown-language-info-face           (:foreground text))
    (markdown-language-keyword-face        (:foreground text))
    (markdown-line-break-face              (:foreground text))
    (markdown-link-face                    (:foreground iris))
    (markdown-link-title-face              (:foreground text))
    (markdown-list-face                    (:foreground faded))
    (markdown-markup-face                  (:foreground faded))
    (markdown-math-face                    (:foreground text))
    (markdown-metadata-key-face            (:foreground faded))
    (markdown-metadata-value-face          (:foreground faded))
    (markdown-missing-link-face            (:foreground text))
    (markdown-plain-url-face               (:foreground text))
    (markdown-pre-face                     (:foreground text))
    (markdown-reference-face               (:foreground iris))
    (markdown-strike-through-face          (:foreground faded))
    (markdown-table-face                   (:foreground text))
    (markdown-url-face                     (:foreground iris)))

  ;; Ivy
  (with-eval-after-load "ivy"
    (ivy-action                              (:foreground faded))
    (ivy-completions-annotations             (:foreground faded))
    (ivy-confirm-face                        (:foreground faded))
    (ivy-current-match                       (:background foam :foreground subtle))
    (ivy-cursor                              (:foreground foam))
    (ivy-grep-info                           (:foreground foam))
    (ivy-grep-line-number                    (:foreground faded))
    (ivy-highlight-face                      (:foreground foam))
    (ivy-match-required-face                 (:foreground faded))
    (ivy-minibuffer-match-face-1             (:foreground iris))
    (ivy-minibuffer-match-face-2             (:foreground iris))
    (ivy-minibuffer-match-face-3             (:foreground iris))
    (ivy-minibuffer-match-face-4             (:foreground iris))
    (ivy-minibuffer-match-highlight          (:foreground foam))
    (ivy-modified-buffer                     (:foreground faded))
    (ivy-modified-outside-buffer             (:foreground faded))
    (ivy-org                                 (:foreground faded))
    (ivy-prompt-match                        (:foreground faded))
    (ivy-remote                              (:foreground text))
    (ivy-separator                           (:foreground faded))
    (ivy-subdir                              (:foreground faded))
    (ivy-virtual                             (:foreground faded))
    (ivy-yanked-word                         (:foreground faded)))



  ))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'rose-pine-dawn)

;; End:

;;; rose-pine-dawn-theme.el ends here
