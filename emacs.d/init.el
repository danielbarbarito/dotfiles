(setq custom-file "~/.emacs.d/personal/custom.el")

(load "~/.emacs.d/personal/defuns")

;; elpa managed
;; ------------------
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)
(when (not package-archive-contents) (package-refresh-contents))

(package 'ag)
(package 'browse-kill-ring+)
(package 'bundler)
(package 'coffee-mode)
(package 'csv-mode)
(package 'dired+)
(package 'dired-details+)
(package 'dropdown-list)
(package 'expand-region)
(package 'exec-path-from-shell)
(package 'feature-mode)
(package 'go-autocomplete)
(package 'haml-mode)
(package 'htmlize)
(package 'js2-mode)
(package 'lua-mode)
(package 'magit)
(package 'markdown-mode)
(package 'maxframe)
(package 'motion-mode)
(package 'multiple-cursors)
(package 'powerline)
(package 'projectile)
(package 'projectile-rails)
(package 'rbenv)
(package 'ruby-guard)
(package 'sass-mode)
(package 'shell-pop)
(package 'toggle-quotes)
(package 'textile-mode)
(package 'yaml-mode)
(package 'yasnippet)
(package 'helm)
(package 'avy)
(package 'what-the-commit)
(package 'emmet-mode)
(package 'auto-complete)
(package 'redo+)
(package 'web-mode)
(package 'org-pomodoro)
(package 'go-mode)


;; submodule managed
;; ------------------
(add-to-list 'load-path "~/.emacs.d/vendor/")

;; (vendor 'feature-mode)
;; (vendor 'jekyll)
;; (vendor 'mode-line-bell)
;; (vendor 'rcodetools    'xmp)
;; (vendor 'revbufs       'revbufs)
;; (vendor 'insert-time   'insert-time 'insert-date 'insert-date-time 'insert-personal-time-stamp)
;; (vendor 'circe)


;; self managed
;; ------------------

(personal 'bindings)
(personal 'c)
(personal 'diff)
(personal 'dired)
(personal 'disabled)
(personal 'flymake)
(personal 'fonts)
(personal 'global)
(personal 'grep)
(personal 'javascript)
(personal 'kbd-macros)
(personal 'mac)
(personal 'org)
(personal 'private)
(personal 'recentf)
(personal 'rectangle)
(personal 'ri-emacs)
(personal 'ruby-mode)
(personal 'saveplace)
(personal 'scratch)
(personal 'server-mode)
(personal 'shell-mode)
(personal 'tabs)
(personal 'theme)
(personal 'utf-8)
(personal 'zoom)

(load custom-file 'noerror)
