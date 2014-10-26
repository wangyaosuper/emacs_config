;;(setq c-basic-offset 4)
;;缩进
(defun my-c-indent-setup()
  (setq c-basic-offset 4)
  (setq indent-tabs-mode nil))
(add-hook 'c-mode-hook 'my-c-indent-setup)
(setq tab-width 4)
(setq indent-tabs-mode nil)





;;搜索
;;(add-to-list 'load-path "~/.emacs.d/wy_pluging")
;;(load "search_extend.el")
;;(load "my_file.el")
;;(global-set-key (read-kbd-macro "C-;") 'search-any)
;(global-set-key (read-kbd-macro "C-'") 'search-extend-any-ret)
;;(global-set-key (kbd "C-x 5 s") 'search-extend-any)
;;(global-set-key (kbd "C-x 5 r") 'search-extend-any-ret)



;;org-mode
(add-to-list 'load-path "/usr/share/emacs/23.3/lisp/org/")
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(add-hook 'org-mode-hook 
	  (lambda () (setq truncate-lines nil)))



;;close menu-bar-mode
(menu-bar-mode -1)
(tool-bar-mode -1)

;;recentf
;;(require 'recentf)
;;(recentf-mode t)
;;(global-set-key (kbd "C-x 5 C-r") 'recentf-open-files)

;;y-or-n-p
(fset 'yes-or-no-p 'y-or-n-p)

;;display-time
;;(display-time)

;;paren
(show-paren-mode t)

;;line-number
;;(add-to-list 'load-path "~/.emacs.d/site/")
;;(require 'wb-line-number)
;;(wb-line-number-toggle)


;;CEDET
;;(load-file "/usr/share/emacs/site-lisp/cedet/common/cedet.el")
;;(global-ede-mode 1)                      ; Enable the Project management system
;;(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
;;(global-srecode-minor-mode 1)            ; Enable template insertion menu

;;emacs code-browser
;;(add-to-list 'load-path "/usr/share/emacs/site-lisp/ecb")
;;(require 'ecb-autoloads)

;;设置semantic cache临时文件的路径，避免到处都是临时文件
(setq semanticdb-default-save-directory "~/.emacs.d/tempfile/")

;;设置bakup文件路径
(setq backup-directory-alist '(("." . "~/.emacs.d/bakupfile")))


;;配置emacsfavourite
;;(require 'wy-emacs-favourite-install "/home/wyao/myprogram/emacsfavourite/src/wy_favourite.el")
;;(wy-emacs-favourite-install)


;;配置sbcl
;;(setq inferior-lisp-program "/usr/bin/sbcl")


;; (setq browse-url-browser-function 'w3m-browse-url)
;; (autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
 ;; optional keyboard short-cut
;; (global-set-key "\C-xm" 'browse-url-at-point)
;; (setq w3m-use-cookies t)

 ;; disable vc-git
 (remove-hook 'find-file-hooks 'vc-find-file-hook)


;; color-theme
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(color-theme-matrix)
