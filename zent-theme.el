;;; zent.el --- dark, low-contrast, inspired by zenburn. -*- lexical-binding: t; -*-

;; Copyright (C) 2020 Jens C. Jensen

;; Author: Jens C. Jensen <jensecj@gmail.com>
;; URL: https://www.github.com/jensecj/zent.el
;; Keywords: theme
;; Package-Requires ((emacs "28.0.50"))
;; Package-Version: 20200702
;; Version: 0.1.0


;;; Commentary:
;;


;;; Code:

(deftheme zent "The zent color theme")

(defgroup zent-theme nil
  "zent theme."
  :group 'faces
  :prefix "zent-theme-"
  :tag "zent theme")

(setq zent-colors
      '((fg+1     . "#FFFFEF")
        (fg+05    . "#F6F6EF")
        (fg       . "#DCDCCC")
        (fg-05    . "#767666")
        (fg-1     . "#656555")

        (bg-2     . "#000000")
        (bg-1     . "#2B2B2B")
        (bg-05    . "#383838")
        (bg       . "#3F3F3F")
        (bg+05    . "#494949")
        (bg+1     . "#4F4F4F")
        (bg+2     . "#5F5F5F")

        (grey-3   . "#313131")
        (grey-2   . "#515151")
        (grey-1   . "#7F7F7F")
        (grey     . "#AFAFAF")
        (grey+1   . "#CFCFCF")
        (grey+2   . "#EFEFEF")

        (red-6    . "#6C3333")
        (red-5    . "#7C4343")
        (red-4    . "#8C5353")
        (red-3    . "#9C6363")
        (red-2    . "#AC7373")
        (red-1    . "#BC8383")
        (red      . "#CC9393")
        (red+1    . "#DCA3A3")
        (red+2    . "#ECB3B3")
        (green-5  . "#2F4F2F")
        (green-4  . "#3F5F3F")
        (green-3  . "#4F6F4F")
        (green-2  . "#5F7F5F")
        (green-1  . "#6F8F6F")
        (green    . "#7F9F7F")
        (green+1  . "#8FB28F")
        (green+2  . "#9FC59F")
        (green+3  . "#AFD8AF")
        (green+4  . "#BFEBBF")
        (blue-5   . "#366060")
        (blue-4   . "#4C7073")
        (blue-3   . "#5C888B")
        (blue-2   . "#6CA0A3")
        (blue-1   . "#7CB8BB")
        (blue     . "#8CD0D3")
        (blue+1   . "#94BFF3")
        (blue+2   . "#ACE0E3")
        (blue+3   . "#BDE0F3")

        (yellow-1 . "#E0CF9F")
        (yellow-2 . "#D0BF8F")
        (yellow   . "#F0DFAF")
        (orange   . "#DFAF8F")
        (cyan     . "#93E0E3")
        (magenta  . "#DC8CC3"))
      )

(setq zent-defs
      (let-alist zent-colors
        `((keyword . ,.orange)
          (built-in . ,.grey-2)
          (function . ,.yellow)
          (macro . ,.orange)
          (comment . ,.green)
          (constant . ,.grey)
          )))

(defun zent (color)
  (cdr (or (assoc color zent-colors)
           (assoc color zent-defs))))

(let ((class '((class color) (min-colors 89))))
  (let-alist zent-colors
    (custom-theme-set-faces
     'zent
;;;; built-in
     `(default            ((,class (:background ,.bg :foreground ,.fg))))
     `(cursor             ((t (:background ,.grey))))
     `(region             ((t (:background ,.bg-1))))
     `(fringe             ((t (:background ,.bg))))
     `(mode-line          ((t (:foreground ,.green+1 :background ,.bg-1))))
     `(mode-line-inactive ((t (:foreground ,.green-2 :background ,.bg))))
     `(header-line        ((t (:foreground ,.yellow :extend t))))
     `(highlight          ((t (:background ,.bg-05))))
     `(link               ((t (:foreground ,.yellow :weight bold))))
     `(link-visited       ((t (:foreground ,.yellow-2 :weight normal))))
     '(button             ((t ())))
     `(widget-field       ((t (:foreground ,.fg :background ,.bg+3))))
     `(escape-glyph       ((t (:foreground ,.yellow :weight bold))))
     `(success            ((t (:foreground ,.green :weight bold))))
     `(warning            ((t (:foreground ,.orange :weight bold))))
     `(tooltip            ((t (:foreground ,.fg :background ,.bg+1))))
;;;;; font-lock
     `(font-lock-builtin-face              ((t (:foreground ,.fg :weight bold))))
     `(font-lock-comment-face              ((t (:foreground ,.green))))
     `(font-lock-comment-delimiter-face    ((t (:foreground ,.green-2))))
     `(font-lock-constant-face             ((t (:foreground ,.green+4))))
     `(font-lock-doc-face                  ((t (:foreground ,.green+2))))
     `(font-lock-function-name-face        ((t (:foreground ,.cyan))))
     `(font-lock-keyword-face              ((t (:foreground ,.yellow :weight bold))))
     `(font-lock-negation-char-face        ((t (:foreground ,.yellow :weight bold))))
     `(font-lock-preprocessor-face         ((t (:foreground ,.blue+1))))
     `(font-lock-regexp-grouping-construct ((t (:foreground ,.yellow :weight bold))))
     `(font-lock-regexp-grouping-backslash ((t (:foreground ,.green :weight bold))))
     `(font-lock-string-face               ((t (:foreground ,.red))))
     `(font-lock-type-face                 ((t (:foreground ,.blue-1))))
     `(font-lock-variable-name-face        ((t (:foreground ,.orange))))
     `(font-lock-warning-face              ((t (:foreground ,.yellow-2 :weight bold))))
;;;; packages
     `(hl-line-face                        ((t (:background ,.bg+2 :extend t))))
     `(fill-column-indicator               ((t (:foreground ,.bg+05))))
     `(show-paren-match-expression         ((t (:foreground nil :background ,.bg-05))))
;;;;; outline
     `(outline-1 ((t (:foreground ,.orange))))
     `(outline-2 ((t (:foreground ,.green+4))))
     `(outline-3 ((t (:foreground ,.blue-1))))
     `(outline-4 ((t (:foreground ,.yellow-2))))
     `(outline-5 ((t (:foreground ,.cyan))))
     `(outline-6 ((t (:foreground ,.green+2))))
     `(outline-7 ((t (:foreground ,.red-4))))
     `(outline-8 ((t (:foreground ,.blue-4))))
;;;;; outline-minor-faces
     `(outline-minor-1 ((t (:inherit outline-1))))
     `(outline-minor-2 ((t (:inherit outline-2))))
     `(outline-minor-3 ((t (:inherit outline-3))))
     `(outline-minor-4 ((t (:inherit outline-4))))
     `(outline-minor-5 ((t (:inherit outline-5))))
     `(outline-minor-6 ((t (:inherit outline-6))))
     `(outline-minor-7 ((t (:inherit outline-7))))
     `(outline-minor-8 ((t (:inherit outline-8))))
;;;;; outshine
     `(outshine-level-1 ((t (:inherit outline-1))))
     `(outshine-level-2 ((t (:inherit outline-2))))
     `(outshine-level-3 ((t (:inherit outline-3))))
     `(outshine-level-4 ((t (:inherit outline-4))))
     `(outshine-level-5 ((t (:inherit outline-5))))
     `(outshine-level-6 ((t (:inherit outline-6))))
     `(outshine-level-7 ((t (:inherit outline-7))))
     `(outshine-level-8 ((t (:inherit outline-8))))
;;;;; org
     `(org-level-1 ((t (:foreground ,.orange))))
     `(org-level-2 ((t (:foreground ,.green+4))))
     `(org-level-3 ((t (:foreground ,.blue-1))))
     `(org-level-4 ((t (:foreground ,.yellow-2))))
     `(org-level-5 ((t (:foreground ,.cyan))))
     `(org-level-6 ((t (:foreground ,.green+2))))
     `(org-level-7 ((t (:foreground ,.red-4))))
     `(org-level-8 ((t (:foreground ,.blue-4))))
;;;;; dired
;;;;; diredp
;;;;; highlight-defined
;;;;; highlight-thing
;;;;; hl-todo
;;;;; diff
     `(diff-added          ((t (:background "#335533" :foreground ,.green))))
     `(diff-changed        ((t (:background "#555511" :foreground ,.yellow-1))))
     `(diff-removed        ((t (:background "#553333" :foreground ,.red-2))))
     `(diff-refine-added   ((t (:background "#338833" :foreground ,.green+4))))
     `(diff-refine-changed ((t (:background "#888811" :foreground ,.yellow))))
     `(diff-refine-removed ((t (:background "#883333" :foreground ,.red))))
     `(diff-header         ((,class (:background ,.bg+2))
                            (t (:background ,.fg :foreground ,.bg))))
     `(diff-file-header
       ((,class (:background ,.bg+2 :foreground ,.fg :weight bold))
        (t (:background ,.fg :foreground ,.bg :weight bold))))
;;;;; diff-hl
     `(diff-hl-change ((,class (:foreground ,.blue :background ,.blue-2))))
     `(diff-hl-delete ((,class (:foreground ,.red+1 :background ,.red-1))))
     `(diff-hl-insert ((,class (:foreground ,.green+1 :background ,.green-2))))
;;;;; diff-hl-dired
;;;;; paren-face
;;;;; magit
     `(magit-diff-added                    ((t (:background ,.green-4))))
     `(magit-diff-added-highlight          ((t (:background ,.green-3))))
     `(magit-diff-removed                  ((t (:background ,.red-5))))
     `(magit-diff-removed-highlight        ((t (:background ,.red-4))))
;;;;; ivy
     `(ivy-confirm-face ((t (:foreground ,.green :background ,.bg))))
     `(ivy-current-match ((t (:foreground ,.yellow :weight bold :underline t))))
     `(ivy-cursor ((t (:foreground ,.bg :background ,.fg))))
     `(ivy-match-required-face ((t (:foreground ,.red :background ,.bg))))
     `(ivy-minibuffer-match-face-1 ((t (:background ,.bg+1))))
     `(ivy-minibuffer-match-face-2 ((t (:background ,.green-2))))
     `(ivy-minibuffer-match-face-3 ((t (:background ,.green))))
     `(ivy-minibuffer-match-face-4 ((t (:background ,.green+1))))
     `(ivy-remote ((t (:foreground ,.blue :background ,.bg))))
     `(ivy-subdir ((t (:foreground ,.yellow :background ,.bg))))
;;;;; swiper
;;;;; counsel
;;;;; avy
     `(avy-background-face ((t (:foreground ,.fg-1 :background ,.bg :inverse-video nil))))
     `(avy-lead-face-0 ((t (:foreground ,.green+3 :background ,.bg :inverse-video nil :weight bold))))
     `(avy-lead-face-1 ((t (:foreground ,.yellow :background ,.bg :inverse-video nil :weight bold))))
     `(avy-lead-face-2 ((t (:foreground ,.red+1 :background ,.bg :inverse-video nil :weight bold))))
     `(avy-lead-face ((t (:foreground ,.cyan :background ,.bg :inverse-video nil :weight bold))))
;;;;; eros
     `(eros-result-overlay-face ((t (:background unspecified))))
;;;;; selectrum
;;;;; elfeed
;;;;; notmuch
     )))


;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))


(provide-theme 'zent)
;;; zent-theme.el ends here
