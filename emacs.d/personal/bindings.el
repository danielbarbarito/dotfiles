;;; Global key bindigns

;; How to Define Keyboard Shortcuts in Emacs
;; http://xahlee.org/emacs/keyboard_shortcuts.html

;; Window manipulation
(global-set-key (kbd "S-C-<left>")  'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>")  'shrink-window)
(global-set-key (kbd "S-C-<up>")    'enlarge-window)

;; Find stuff
(global-set-key (kbd "C-c f")       'helm-do-grep-ag)

;; Keyboard macros
(global-set-key [(shift f4)]        'kmacro-start-macro-or-insert-counter)
;; (global-set-key [(f4)]           'kmacro-end-or-call-macro)  ;; already defined

;; Refresh-like
(global-set-key [(f5)]              'revert-buffer)
(global-set-key [(control f5)]      'revbufs)

;; Query Replace
(global-set-key (kbd "C-S-s")       'replace-string)
(global-set-key (kbd "C-M-S-s")     'replace-regexp)

;; Indenting and alignment
(global-set-key [(f8)]              'indent-region)
(global-set-key [(control f8)]      'align)
(global-set-key [(shift f8)]        'align-current)
(global-set-key [(meta f8)]         'align-regexp)

;; Version control and change related
(global-set-key [(f2)]              'magit-status)
(global-set-key [(control f2)]      'magit-status)

;; map the window manipulation keys to meta 0, 1, 2, o
(global-set-key (kbd "M-3") 'split-window-horizontally) ; was digit-argument
(global-set-key (kbd "M-2") 'split-window-vertically) ; was digit-argument
(global-set-key (kbd "M-1") 'delete-other-windows) ; was digit-argument
(global-set-key (kbd "M-0") 'delete-window) ; was digit-argument
(global-set-key (kbd "M-o") 'other-window) ; was facemenu-keymap

(global-set-key (kbd "M-O") 'rotate-windows)

;; Replace dired's M-o
(add-hook 'dired-mode-hook (lambda () (define-key dired-mode-map (kbd "M-o") 'other-window))) ; was dired-omit-mode
;; Replace ibuffer's M-o
(add-hook 'ibuffer-mode-hook (lambda () (define-key ibuffer-mode-map (kbd "M-o") 'other-window))) ; was ibuffer-visit-buffer-1-window
;; To help Unlearn C-x 0, 1, 2, o
(global-unset-key (kbd "C-x 3")) ; was split-window-horizontally
(global-unset-key (kbd "C-x 2")) ; was split-window-vertically
(global-unset-key (kbd "C-x 1")) ; was delete-other-windows
(global-unset-key (kbd "C-x 0")) ; was delete-window
(global-unset-key (kbd "C-x o")) ; was other-window

;; Repeat
(global-set-key [(control z)] 'repeat) ; was suspend-frame

;; Window navigation
(windmove-default-keybindings 'meta)

(global-set-key (kbd "C-M-y") 'browse-kill-ring)

(global-set-key (kbd "C-x C-b") 'ibuffer)
