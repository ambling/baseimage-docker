;;MIT Licensed
;;By ambling<ambling07@gmail.com>


(global-unset-key "\M- ")
(global-set-key "\M- " 'set-mark-command)
(global-set-key "\C-cc" 'comment-or-uncomment-region)

(global-set-key "\M-\t" 'dabbrev-expand)

(global-linum-mode 1)
(setq linum-format "%d ")

;; disable backup
(setq backup-inhibited t)
;; disable autosave
(setq auto-save-default nil)

(transient-mark-mode t)
(global-set-key [(meta g)] 'goto-line)

;; (add-to-list 'load-path "~/.emacs.d")
;; 
;; (require 'color-theme)
;; (color-theme-initialize)
;; ;; (color-theme-comidia)
;; (color-theme-calm-forest )

;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;;(load-theme 'granger t)

(display-time-mode 1) 
;;时间使用24小时制 
(setq display-time-24hr-format t) 
;;时间显示包括日期和具体时间 
(setq display-time-day-and-date t)

;;允许emacs和外部其他程序的粘贴 
(setq x-select-enable-clipboard t) 
;;滚动页面时比较舒服，不要整页的滚动 
(setq scroll-step 1 
scroll-margin 3 
scroll-conservatively 10000) 
;;在minibuffer上面可以显示列号 
(column-number-mode t) 
;;启用minibuffer
(minibuffer-electric-default-mode 1) 
;;在minibuffer里启用自动补全函数和变量 
(icomplete-mode 1) 
;;所有的问题用y/n方式，不用yes/no方式。有点懒，只想输入一个字母 
(fset 'yes-or-no-p 'y-or-n-p) 
;;允许minibuffer自由变化其大小（指宽度） 
(setq resize-mini-windows t) 
