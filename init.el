(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/packages/")

(require 'cl)                                                     ; adds compatibility with common lisp
(require 'ibuffer)

(global-set-key (kbd "C-x C-b") 'ibuffer)                         ; replace standard buffer list with ibuffer 

(fset 'yes-or-no-p 'y-or-n-p)                                     ; y or n instead of yes or no

(load-theme 'tango-dark)

;(global-hl-line-mode 1)                                           ; highlight current line
(column-number-mode 1)                                            ; show column numbers
(global-linum-mode 1)                                             ; show line numbers in fringe
(show-paren-mode 1)                                               ; highlight parenthesis
(mouse-wheel-mode 1)                                              ; enable mouse-wheel scrolling
(ido-mode 1)                                                      ; fuzzy matching
(blink-cursor-mode 0)                                             ; disable cursor blinking
(scroll-bar-mode 0)                                               ; hide scroll bar
(tool-bar-mode 0)                                                 ; hide tool bar
(menu-bar-mode 0)                                                 ; hide menu bar

(setq inhibit-startup-message t                                   ; don't show welcome message
      visible-bell t                                              ; no beeping
      blink-matching-paren nil                                    ; do not move to opened parenthesis
      ;show-paren-style 'expression
      default-indicate-empty-lines t                              ; show empty lines
      european-calendar-style t
      calendar-week-start-day 1                                   ; week starts with Monday
	  
      backup-directory-alist                                      ; this will all place all auto-saves and
          `((".*" . ,temporary-file-directory))                   ; backups in the directory pointed to
      auto-save-file-name-transforms                              ; by temporary-file-directory
          `((".*" ,temporary-file-directory t))                   ; (e.g., C:\Users\Alexey\AppData\Local\Temp on Windows)
	  
      scroll-conservatively most-positive-fixnum                  ; for smooth scrolling
	  redisplay-dont-pause t                                      ; for smooth scrolling
      scroll-preserve-screen-position t                           ; don't move the cursor when scrolling
      scroll-step 1                                               ; keyboard scroll one line at a time
      mouse-wheel-scroll-amount '(1 ((shift) . 1))                ; mouse scroll one line at a time
      mouse-wheel-progressive-speed t)                            ; accelerate scrolling

(add-to-list 'auto-mode-alist '("\\.clp\\'" . clips-mode))
(require 'inf-clips)
(setq inferior-clips-program "C:/CLIPSWindows/clipsdos")
