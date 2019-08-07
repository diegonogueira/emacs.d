(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))
(package-initialize)

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(ansi-term-color-vector
   [unspecified "#2e2e2e" "#bc8383" "#7f9f7f" "#d0bf8f" "#6ca0a3" "#dc8cc3" "#8cd0d3" "#b6b6b6"] t)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("8150ded55351553f9d143c58338ebbc582611adc8a51946ca467bd6fa35a1075" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "28335ebd9ad0ee69c9ce4157eb621bb93b1bc31d054b48952cb9887a4d863fad" "c82d24bfba431e8104219bfd8e90d47f1ad6b80a504a7900cbee002a8f04392f" default)))
 '(fci-rule-color "#383838")
 '(frame-background-mode (quote dark))
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f"))))
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (pretty-mode expand-region mark-multiple swiper popup-kill-ring symon dmenu diminish spaceline company dashboard rainbow-delimiters sudo-edit hungry-delete switch-window beacon rainbow-mode avy org-bullets smex ido-vertical-mode grayscale-theme sgrayscale-theme spacemacs-theme nova-theme zenburn-theme use-package)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(vc-annotate-background "#3C4C55")
 '(vc-annotate-color-map
   (\`
    ((20 \, "#DF8C8C")
     (40 \, "#e3af97978d26")
     (60 \, "#e780a2a28dc0")
     (80 \, "#eb50adac8e5a")
     (100 \, "#ef21b8b88ef4")
     (120 \, "#F2C38F")
     (140 \, "#ee20c861905c")
     (160 \, "#e94eccff912a")
     (180 \, "#e47dd19d91f7")
     (200 \, "#dfabd63b92c5")
     (220 \, "#DADA93")
     (240 \, "#d0d0d8719393")
     (260 \, "#c6c6d6089393")
     (280 \, "#bcbcd39f9393")
     (300 \, "#b2b2d1369393")
     (320 \, "#A8CE93")
     (340 \, "#a13ac894a409")
     (360 \, "#99ccc25bb480")
     (380 \, "#925ebc21c4f7")
     (400 \, "#8af0b5e8d56e")
     (420 \, "#83AFE5")
     (440 \, "#8821aa0fe517")
     (460 \, "#8cbfa470e449")
     (480 \, "#915d9ed1e37c")
     (500 \, "#95fb9932e2ae")
     (520 \, "#9A93E1"))))
 '(vc-annotate-very-old-color "#7bae760fb4b4"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "nil" :family "Monaco")))))
