(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

(unless (package-installed-p 'zenburn-theme)
  (package-refresh-contents)
  (package-install 'zenburn-theme))

(unless (package-installed-p 'nova-theme)
  (package-refresh-contents)
  (package-install 'nova-theme))

(line-number-mode 1)
(column-number-mode 1)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(global-subword-mode 1)

(setq display-time-24hr-format t)
(display-time-mode 1)

(setq electric-pair-pairs '(
			   (?\( . ?\))
			   (?\[ . ?\])
			   (?\{ . ?\})
			   ))
(electric-pair-mode t)

(setq make-backup-files nil) 
(setq auto-save-default nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq ring-bell-function 'ignore)

(when window-system (global-prettify-symbols-mode t))

(when window-system (global-hl-line-mode t))

(setq inhibit-startup-message t)
(setq scroll-conservatively 100)

(defvar my-term-shell "/bin/bash")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

(use-package hungry-delete
  :ensure t
  :config (global-hungry-delete-mode))

(use-package sudo-edit
  :ensure t
  :bind ("s-e" . sudo-edit))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-items '((recents . 10)))
  (setq dashboard-banner-logo-title "Dashboard"))

(use-package spaceline
  :ensure t
  :config
  (require 'spaceline-config)
  (setq powerline-default-separator (quote arrow))
  (spaceline-spacemacs-theme))

(use-package diminish
  :ensure t
  :init
  (diminish 'hungry-delete-mode)
  (diminish 'beacon-mode)
  (diminish 'subword-mode)
  (diminish 'rainbow-mode)
  (diminish 'which-key-mode))

(use-package dmenu
  :ensure t
  :bind
  ("s-SPC" . 'dmenu))

(use-package symon
  :ensure t
  :bind
  ("s-h" . symon-mode))

(use-package beacon
  :ensure t
  :init
  (beacon-mode 1))

(ido-mode 1)
(setq ido-enable-flex-matching nil)
(setq ido-create-new-buffer 'always)
(setq ido-everywhere t)

(use-package ido-vertical-mode
  :ensure t
  :init
  (ido-vertical-mode 1))

(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(use-package smex
  :ensure t
  :init (smex-initialize)
  :bind
  ("M-x" . smex))

(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)

(defun kill-all-buffers()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))
(global-set-key (kbd "C-M-k") 'kill-all-buffers)

(defun kill-curr-buffer ()
  (interactive)
  (kill-buffer (current-buffer)))
(global-set-key (kbd "C-x k") 'kill-curr-buffer)

(global-set-key (kbd "C-x b") 'ibuffer)

(setq ibuffer-expert t)

(use-package avy
  :ensure t
  :bind
  ("M-s" . avy-goto-char))

(defun kill-whole-word ()
  (interactive)
  (backward-word)
  (kill-word 1))
(global-set-key (kbd "C-c w w") 'kill-whole-word)

(defun copy-whole-line ()
  (interactive)
  (save-excursion
    (kill-new
     (buffer-substring
      (point-at-bol)
      (point-at-eol)))))
(global-set-key (kbd "C-c w l") 'copy-whole-line)

(setq org-src-window-setup 'current-window)
(add-to-list 'org-structure-template-alist
	     '("el" "#+BEGIN_SRC emacs-lisp\n?\n#+END_SRC"))

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode))))

(defun config-visit ()
  (interactive)
  (find-file "~/.emacs.d/config.org"))
(global-set-key (kbd "C-c e") 'config-visit)

(defun config-reload ()
  (interactive)
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))
(global-set-key (kbd "C-c r") 'config-reload)

(use-package rainbow-mode
  :ensure t
  :init (rainbow-mode 1))

(use-package rainbow-delimiters
  :ensure t
  :init
  (rainbow-delimiters-mode 1))

(use-package switch-window
  :ensure t
  :config
  (setq switch-window-input-style 'minibuffer)
  (setq swtich-window-increase 4)
  (setq switch-window-threshold 2)
  (setq switch-window-shortcut-style 'qwerty)
  (setq switch-window-qwerty-shortcuts
	'("a" "s" "d" "f" "h" "j" "k" "l"))
  :bind
  ([remap other-window] . switch-window))

(defun split-and-follow-horizontally()
  (interactive)
  (split-window-below)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 2") 'split-and-follow-horizontally)

(defun split-and-follow-vertically()
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)

(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))
