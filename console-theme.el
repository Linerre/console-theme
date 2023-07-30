;;; console-theme.el --- Emacs theme that mimics the style of oldschool tty console
;;; Commentary:
;;; Colors are mostly from the built-in 8-bit palette, with a few variations.
;;; Also inspired by `carbon' theme.

;;; Version: 0.1.0
;;; Main Source: https://int10h.org/oldschool-pc-fonts
;;; Code:

(deftheme console
  "An Emacs theme that mimics Financial Times.")

(defvar theme-header-scale '(1.2 1.1 1.0 1.0 1.0 1.0 1.0)
  "Scales for headers.")

(let ((black     "#000000")             ; bg
      (padding   "#292929")             ; bg and gray padding
      (coal      "#666666")             ; coal-like black for modeline
      (white     "#AAAAAA")             ; fg
      (grey      "#555555")             ; gray (dimmer text)
      (strong    "#FFFFFF")             ; for outstanding stuff
      (green     "#00AA00")             ; green (string, ok, correct, etc)
      (cyan      "#00AAAA")             ; cyan (doc)
      (magenta   "#C46CDA")             ; constant
      (lcyan     "#55FFFF")             ; lighter cyan
      (orange    "#E67300")             ; orange (highlight)
      (blue      "#2994FF")
      (red       "#DB5050")             ; red (comment)
      ;; (orange    "#CC6600")             ; orange (highlight)
      ;; (red       "#BB0000")             ; red (comment)
      (yellow    "#FFFF55")             ; yellow (warning)
      (teal      "#0D7680")             ; ft-green for string
      (teal20    "#B6CCC7")
      (sgrey     "#929397")             ; grey used for section header bg
      (select    "#0000FF")             ; ansi blue
      (tgrey     "#E8EAEE")             ; grey for title area bg or popup
      (adfg      "#00572C")             ; git added text/fg color
      (adbg      "#CCDFC7")             ; git added bg color
      (rmfg      "#660A29")             ; git added text/fg color: claret40
      (rmbg      "#EBC4C3")             ; git removed bg color
      (cm        "#909090")
      (frame     "#393939")             ; for mode-line
      (lh        "#0DA59B")
      (hl        "#FFBC5D"))            ; highlight: orange

  (custom-theme-set-faces
   'console
   `(default                    ((((type tty)))
                                (((type graphic)) :background ,padding :foreground ,white)))
   ;; Basics
   `(cursor                      ((t (:background ,white))))
   `(region                      ((t (:background ,green :foreground ,black :extend nil))))
   `(hl-line                     ((t (:background ,cyan :foreground ,strong))))
   `(fringe                      ((t (:background ,black))))
   `(show-paren-match            ((t (:background ,orange :foreground ,black))))
   `(highlight                   ((t (:background ,green :foreground ,black))))
   `(button                      ((t (:box (:line-width (-1 . -1) :color ,teal)))))
   `(vertical-border             ((t ())))
   `(italic                      ((t (:slant italic :underline nil))))
   `(line-number-current-line    ((t (:foreground ,strong :background ,padding))))
   `(completions-common-part     ((t (:bold t))))
   `(minibuffer-prompt           ((t ())))
   `(lazy-highlight              ((t (:foreground ,lh :underline t))))
   `(compilation-info            ((t ())))
   `(compilation-warning         ((t ())))
   `(compilation-column-number   ((t ())))
   `(completions-highlight       ((t ())))
   `(warning                     ((t ())))
   `(match                       ((t (:background ,select :foreground ,yellow))))
   `(secondary-selection         ((t (:background ,teal20 :extend nil))))
   `(help-key-binding            ((t (:bold t))))
   `(shadow                      ((t (:foreground ,cm))))
   `(error                       ((t (:foreground ,red))))
   ;; `(window-divider                 ((t (:foreground ,cm))))
   ;; `(window-divider-first-pixel     ((t (:foreground ,cm))))
   ;; `(window-divider-last-pixel      ((t (:foreground ,cm))))
   ;; `(line-number                    ((t (:foreground ,cm))))

   ;; ISearch
   `(isearch                        ((t (:background ,select :foreground ,yellow))))
   `(isearch-fail                   ((t (:background ,select :foreground ,red))))
   `(isearch-group-1                ((t (:background ,cyan :foreground ,white))))
   `(isearch-group-2                ((t (:background ,select :foreground ,white))))

   ;; Font Locks
   `(font-lock-comment-face           ((t (:foreground ,red))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,red))))
   `(font-lock-delimiter-face         ((t (:foreground ,white))))
   `(font-lock-string-face            ((t (:foreground ,green))))
   `(font-lock-doc-face               ((t (:foreground ,cyan))))
   `(font-lock-bracket-face           ((t (:foreground ,white))))
   `(font-lock-builtin-face           ((t ())))
   `(font-lock-type-face              ((t ())))
   `(font-lock-variable-name-face     ((t ())))
   `(font-lock-keyword-face           ((t (:foreground ,cm))))
   `(font-lock-constant-face          ((t (:foreground ,magenta))))
   `(font-lock-function-name-face     ((t (:foreground ,blue))))
   `(font-lock-warning-face           ((t (:bold t))))
   `(font-lock-preprocessor-face      ((t (:foreground "#66605C"))))
   `(font-lock-number-face            ((t (:foreground ,magenta))))
   `(highlight-numbers-number         ((t (:foreground ,magenta))))

   ;; shell
   `(sh-quoted-exec             ((t ())))
   `(sh-heredoc                 ((t (:foreground ,teal))))

   ;; IMenu
   `(imenu-list-entry-face-0          ((t ())))
   `(imenu-list-entry-subalist-face-0 ((t (:bold t))))

   ;; Mode Line
   `(tab-line                       ((t ())))
   `(mode-line                      ((t (:background ,coal :foreground ,strong))))
   `(mode-line-inactive             ((t (:background ,frame :foreground ,white))))
   `(header-line                    ((t ())))
   `(header-line-inactive           ((t ())))

   ;; Yasnippet
   `(yas-field-highlight-face       ((t (:background ,teal20 :foreground ,black))))
   `(yascroll:thumb-fringe          ((t (:foreground ,cm :background ,cm))))
   `(yascroll:thumb-text-area       ((t (:foreground ,cm :background ,cm))))

   ;; Company
   `(company-preview-common            ((t (:inherit default))))
   `(company-preview-search            ((t (:inherit default))))
   `(company-tooltip-common            ((t ())))
   `(company-tooltip-common-selection  ((t (:bold t :foreground ,black))))
   `(company-tooltip                   ((t (:background ,padding))))
   `(company-tooltip-search            ((t ())))
   `(company-tooltip-search-selection  ((t (:background ,cyan :foreground ,strong))))
   `(company-tooltip-selection         ((t (:background ,cyan :foreground ,strong))))
   `(company-tooltip-mouse             ((t (:background ,cyan :foreground ,strong))))
   `(company-tooltip-preview           ((t (:background ,cyan :foreground ,strong))))
   `(company-tooltip-annotation        ((t ())))
   ;; This nulls the scrollbar in effect
   `(company-tooltip-scrollbar-track   ((t (:background ,padding))))
   `(company-tooltip-scrollbar-thumb   ((t (:background ,padding))))
   `(company-template-field            ((t (:inherit yas-field-highlight-face))))

   ;; Cargo
   `(cargo-process--standard-face      ((t (:inherit default))))
   `(cargo-process--error-face         ((t (:foreground ,red))))
   `(cargo-process--pointer-face       ((t (:foreground ,lcyan))))
   `(cargo-process--warning-face       ((t (:foreground "#615440"))))

   ;; Vertico & Orderless
   `(vertico-current         ((t (:background ,green, :foreground ,black))))
   `(orderless-match-face-0  ((t (:foreground ,yellow))))
   `(orderless-match-face-1  ((t (:foreground ,orange))))
   `(orderless-match-face-2  ((t (:foreground ,red))))
   `(orderless-match-face-3  ((t (:foreground ,magenta))))

   ;; Vundo
   `(vundo-highlight  ((t (:foreground ,hl))))

   ;; Meow
   `(meow-beacon-indicator          ((t (:bold t))))
   `(meow-keypad-indicator          ((t (:bold t))))
   `(meow-insert-indicator          ((t (:bold t))))
   `(meow-normal-indicator          ((t (:bold t))))
   `(meow-motion-indicator          ((t (:bold t))))
   `(meow-keypad-cursor             ((t (:background ,white))))
   `(meow-insert-cursor             ((t (:background ,white))))
   `(meow-normal-cursor             ((t (:background ,white))))
   `(meow-motion-cursor             ((t (:background ,white))))
   `(meow-unknown-cursor            ((t (:background ,white))))
   `(meow-beacon-cursor             ((t (:background ,white))))

   ;; Cider
   `(cider-result-overlay-face      ((t (:inverse-video t))))
   `(cider-repl-stderr-face         ((t ())))
   `(cider-repl-stdout-face         ((t (:foreground "gray60"))))
   `(cider-test-error-face          ((t (:foreground "yellow" :inverse-video t))))

   ;; Clojure
   `(clojure-character-face       ((t ())))
   `(clojure-keyword-face         ((t (:foreground ,magenta))))

   ;; Magit
   `(magit-branch-local                ((t (:foreground ,magenta))))
   `(magit-branch-remote               ((t (:foreground ,blue))))
   `(magit-header-line                 ((t ())))
   `(magit-head                        ((t ())))
   `(magit-tag                         ((t (:foreground ,cm))))
   `(magit-section-highlight           ((t (:background ,padding))))
   `(magit-section-heading             ((t (:foreground ,blue))))
   `(magit-section-selection           ((t ())))
   `(magit-diff-removed                ((t (:background ,rmbg :foreground "gray50"))))
   `(magit-diff-removed-highlight      ((t (:background ,rmbg :foreground ,rmfg))))
   `(magit-diff-added                  ((t (:background ,adbg :foreground "gray50"))))
   `(magit-diff-added-highlight        ((t (:background ,adbg :foreground ,adfg))))
   `(magit-diff-context-highlight      ((t (:background ,padding foreground ,white))))
   `(magit-diff-whitespace-warning     ((t (:foreground ,black))))
   `(magit-reflog-cherry-pick          ((t (:foreground ,teal))))
   `(magit-reflog-checkout             ((t (:foreground ,teal))))
   `(magit-reflog-merge                ((t (:foreground ,teal))))
   ;; `(magit-reflog-other                ((t (:foreground ,))))
   ;; `(magit-reflog-remote               ((t (:foreground ,oxford70))))

   ;; SMerge
   ;; `(smerge-refined-added           ((t (:background "#253325"))))
   ;; `(smerge-lower                   ((t (:background "#173017"))))
   ;;
   ;; Diff-hl
   `(diff-hl-insert                 ((t (:foreground ,cm :background ,cm))))
   `(diff-hl-change                 ((t (:background ,hl :foreground ,black))))
   `(diff-hl-delete                 ((t (:background ,black :foreground ,white))))
   `(diff-error                     ((t (:foreground ,red))))

   `(eshell-prompt                  ((t (:bold t))))
   `(dired-directory                ((t (:foreground ,cyan))))

   ;; Term & Popup
   ;; `(term-color-blue                ((t (:foreground ,blue :background ,blue))))
   ;; `(term-color-green               ((t (:foreground ,green :background ,green))))
   ;; `(term-color-red                 ((t (:foreground ,red :background ,red))))
   ;; `(popup-tip-face                 ((t (:background ,bg+4 :foreground ,fg))))
   ;; `(popup-isearch-match            ((t (:background "#CFA300" :foreground "black"))))
   ;; `(tooltip                        ((t ())))

   ;; Emacs Rime
   `(rime-preedit-face              ((t (:underline t))))
   `(rime-cursor-face               ((t (:inherit font-lock-constant-face))))
   `(rime-indicator-face            ((t ())))
   `(rime-indicator-dim-face        ((t ())))
   `(rime-candidate-num-face        ((t ())))
   `(rime-comment-face              ((t ())))
   `(rime-code-face                 ((t (:bold t))))
   `(rime-default-face              ((t ())))
   `(rime-highlight-candidate-face  ((t ())))

   ;; Markdown
   `(markdown-header-face-1             ((t (:bold t :height ,(nth 0 theme-header-scale)))))
   `(markdown-header-face-2             ((t (:bold t :height ,(nth 1 theme-header-scale)))))
   `(markdown-header-face-3             ((t (:bold t :height ,(nth 2 theme-header-scale)))))
   `(markdown-header-face-4             ((t (:bold t))))
   `(markdown-header-face-5             ((t ())))
   `(markdown-header-face-6             ((t ())))
   `(markdown-pre-face                  ((t (:inherit default :foreground ,cm))))
   `(markdown-url-face                  ((t (:foreground ,cm))))
   `(markdown-code-face                 ((t (:inherit default))))
   `(markdown-inline-code-face          ((t (:inherit default :foreground ,red))))
   `(markdown-highlighting-face         ((t (:background ,hl))))

   ;; Telega
   `(telega-entity-type-code        ((t ())))
   `(telega-msg-heading             ((t ())))
   `(telega-msg-self-title          ((t ())))
   `(telega-unmuted-count           ((t ())))

   ;; Org-mode
   `(org-document-title        ((t (:bold t :height ,(nth 0 theme-header-scale)))))
   `(org-link                  ((t (:foreground ,cyan :underline t))))
   `(org-level-1               ((t (:foreground ,black :bold t))))
   `(org-level-2               ((t (:foreground ,black))))
   `(org-level-3               ((t (:foreground ,cm))))
   `(org-level-4               ((t ())))
   `(org-level-5               ((t ())))
   `(org-level-6               ((t ())))
   `(org-level-7               ((t ())))
   `(org-todo                  ((t (:foreground ,red :bold t))))
   `(org-code                  ((t (:background "blue" :foreground ,lcyan))))
   `(org-block                 ((t ())))
   `(org-quote                 ((t (:extend t))))
   `(org-verse                 ((t (:extend t))))
   `(org-block-begin-line      ((t (:foreground ,white :background ,sgrey :family "Monospace" :font "Monospace" :bold t :extend t))))
   `(org-block-end-line        ((t (:foreground ,white :background ,sgrey :family "Monospace" :font "Monospace" :bold t :extend t))))

   `(fill-column-indicator          ((t (:foreground ,cm))))
   `(scroll-bar                     ((t (:foreground ,black))))
   `(parenthesis                    ((t (:foreground ,cm))))
   `(eldoc-box-body                 ((t (:background ,tgrey :inherit default))))

   `(flycheck-fringe-warning        ((t (:foreground ,yellow))))
   `(flycheck-warning               ((t (:underline (:style wave :color ,hl)))))
   `(flycheck-info                  ((t (:underline (:style wave :color ,yellow)))))
   `(flycheck-error                 ((t (:underline (:style wave :color ,red)))))
   `(flycheck-error-list-info       ((t (:foreground ,teal))))
   `(flycheck-error-list-warning    ((t (:foreground ,yellow))))
   `(flymake-warning                ((t (:underline (:style wave :color ,hl)))))
   `(flymake-error                  ((t (:underline (:style wave :color ,red)))))
   `(flymake-note                   ((t (:underline (:style wave :color ,cm)))))

   `(wgrep-face                     ((t (:underline ,magenta))))

   `(erc-nick-default-face          ((t (:inherit font-lock-keyword-face))))
   `(erc-input-face                 ((t (:inherit font-lock-function-name-face))))
   `(erc-timestamp-face             ((t (:inherit font-lock-constant-face))))
   `(erc-notice-face                ((t (:inherit font-lock-comment-face))))
   `(lsp-modeline-code-actions-face ((t (:foreground ,black))))
   `(lsp-modeline-code-actions-preferred-face ((t (:foreground ,teal))))
   ;; tab bar
   `(tab-bar                        ((t (:background ,white foreground ,black))))
   `(tab-bar-tab                    ((t (:inverse-video t :bold t))))
   `(tab-bar-tab-inactive           ((t ())))
   `(ansi-color-blue                ((t (:foreground ,blue))))
   `(ansi-color-bright-blue         ((t (:foreground ,select))))
   `(embark-keybinding              ((t (:inherit font-lock-constant-face))))

   ;; which-key
   `(which-key-command-description-face     ((t :foreground ,cyan)))
   `(which-key-highlighted-command-face     ((t :foreground ,cyan)))
   `(which-key-local-map-description-face   ((t :foreground ,cyan)))

    ;; Treesitter
   `(tree-sitter-hl-face:type       ((t ())))
   `(tree-sitter-hl-face:type.parameter ((t ())))
   `(tree-sitter-hl-face:type.argument ((t ())))
   `(tree-sitter-hl-face:type.builtin ((t ())))
   `(tree-sitter-hl-face:type.super ((t ())))
   `(tree-sitter-hl-face:constructor ((t ())))
   `(tree-sitter-hl-face:variable ((t ())))
   `(tree-sitter-hl-face:variable.parameter ((t ())))
   `(tree-sitter-hl-face:variable.builtin ((t ())))
   `(tree-sitter-hl-face:variable.special ((t ())))
   `(tree-sitter-hl-face:property ((t ())))
   `(tree-sitter-hl-face:property.definition ((t ())))
   `(tree-sitter-hl-face:comment ((t (:foreground ,red))))
   ;;
   `(tree-sitter-hl-face:doc ((t (:foreground ,orange))))
   `(tree-sitter-hl-face:string ((t (:foreground ,cyan))))
   ;;
   `(tree-sitter-hl-face:string.special ((t (:foreground ,lcyan :bold t))))
   ;;
   `(tree-sitter-hl-face:escape ((t ())))
   `(tree-sitter-hl-face:embedded ((t ())))
   ;;
   `(tree-sitter-hl-face:keyword ((t (:foreground ,cm))))
   ;;
   `(tree-sitter-hl-face:function ((t (:foreground ,blue))))
   `(tree-sitter-hl-face:function.builtin ((t ())))
   `(tree-sitter-hl-face:function.call ((t ())))
   `(tree-sitter-hl-face:function.macro ((t (:foreground ,magenta))))
   `(tree-sitter-hl-face:function.method ((t ())))
   `(tree-sitter-hl-face:function.method.call ((t ())))
   `(tree-sitter-hl-face:function.special ((t ())))

   `(tree-sitter-hl-face:method ((t ())))
   `(tree-sitter-hl-face:method.call ((t ())))
   `(tree-sitter-hl-face:operator ((t ())))
   `(tree-sitter-hl-face:punctuation ((t ())))
   `(tree-sitter-hl-face:punctuation.bracket ((t (:foreground ,white))))
   `(tree-sitter-hl-face:punctuation.delimiter ((t ())))
   `(tree-sitter-hl-face:punctuation.special ((t ())))
   ;; dim
   `(tree-sitter-hl-face:label ((t ())))
   `(tree-sitter-hl-face:constant ((t ())))
   `(tree-sitter-hl-face:constant.builtin ((t (:foreground ,magenta))))
   ;;
   `(tree-sitter-hl-face:number ((t (:foreground ,magenta))))
   `(tree-sitter-hl-face:tag ((t ())))
   `(tree-sitter-hl-face:attribute ((t ())))))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'console)

;;; console-theme.el ends here
