;==============================================================================
; 言語に関する設定
;==============================================================================

;------------
; Plain Text
;------------
; Plain Text(*.txt)のデフォルトモードを設定
(autoload 'indented-text-mode "text-mode")
(setq auto-mode-alist (append (list '("\\.te?xt$" . indented-text-mode))
                              auto-mode-alist))
(defun my-text-mode-hook ()
  (setq indent-tabs-mode 'nil)
  )
(add-hook 'text-mode-hook 'my-text-mode-hook)


;------------------------------------
; C, C++, Objective-C, Java, and IDL
;------------------------------------
(autoload 'c-mode "cc-mode")
;(defun my-c-mode-common-hook ()
(defun my-c-mode-hook ()
  (c-set-style "bsd")
  (setq c-basic-offset 4)
;  (setq c-basic-offset 8)
  (c-set-offset 'knr-argdecl-intro '*)
  (c-set-offset 'arglist-intro     '*)
  (c-set-offset 'arglist-close     '*)
;  (c-set-offset 'case-label        '*)
  (c-set-offset 'access-label      '/)
  (c-set-offset 'label             '*)
;  (setq tab-width 8)
  (setq tab-width 4)
  (setq indent-tabs-mode 't)
;  (setq c-syntactic-indentation nil)
;  (setq c-syntactic-indentation-in-macros nil)
;  (electric-indent-local-mode -1)
;  (setq ac-sources (delq 'ac-source-filename ac-sources))
  )
;(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
(add-hook 'c-mode-hook 'my-c-mode-hook)

(autoload 'c++-mode "cc-mode")
(defun my-c++-mode-hook ()
;  (c-set-style "linux")
  (c-set-style "bsd")
  (setq c-basic-offset 4)
;  (setq c-basic-offset 8)
  (c-set-offset 'knr-argdecl-intro '*)
  (c-set-offset 'arglist-intro     '*)
  (c-set-offset 'arglist-close     '*)
;  (c-set-offset 'case-label        '*)
  (c-set-offset 'access-label      '/)
  (c-set-offset 'label             '*)
  (c-set-offset 'inline-open       '0)
;  (setq tab-width 8)
  (setq tab-width 4)
  (setq indent-tabs-mode 't)
;  (setq c-syntactic-indentation nil)
;  (setq c-syntactic-indentation-in-macros nil)
;  (electric-indent-local-mode -1)
;  (setq ac-sources (delq 'ac-source-filename ac-sources))
  )
;(defun my-c++-mode-hook ()
;  (c-set-style "bsd")
;  (setq c-basic-offset 4)
;  (c-set-offset 'knr-argdecl-intro '*)
;  (c-set-offset 'arglist-intro     '*)
;  (c-set-offset 'arglist-close     '*)
;  (c-set-offset 'access-label      '/)
;  (c-set-offset 'label             '*)
;  (setq tab-width 8)
;  (setq indent-tabs-mode 'nil)
;  )
(add-hook 'c++-mode-hook 'my-c++-mode-hook)


;----
; C#
;----
(modify-coding-system-alist 'file "\\.cs\\'" 'utf-8-with-signature-dos)


;------
; Ruby
;------
(autoload 'ruby-mode "ruby-mode")
(setq auto-mode-alist (append (list '("\\.rb$" . ruby-mode))
                              auto-mode-alist))
(defun my-ruby-mode-hook ()
  (setq indent-tabs-mode 'nil)
  )
(add-hook 'ruby-mode-hook 'my-ruby-mode-hook)


;--------
; RDtool
;--------
(autoload 'rd-mode "rd-mode")
(setq auto-mode-alist (append (list '("\\.rd$" . rd-mode))
                              auto-mode-alist))


;------
; Perl 
;------
(autoload 'perl-mode "perl-mode")
(setq auto-mode-alist (append (list '("\\.pl$" . perl-mode)
                                    '("\\.pm$" . perl-mode))
                              auto-mode-alist))
(defun my-perl-mode-hook ()
  (setq perl-indent-level               '4)
  (setq perl-continued-statement-offset '4)
  (setq perl-continued-brace-offset     '-4)
  (setq perl-brace-offset               '0)
  (setq perl-brace-imaginary-offset     '0)
  (setq perl-label-offset               '0)
  (setq indent-tabs-mode 't)
  )
(add-hook 'perl-mode-hook 'my-perl-mode-hook)


;----------
; Makefile 
;----------
(setq auto-mode-alist (append (list '("[:/]makefile" . makefile-mode)
                                    '("\\.mak$" . makefile-mode)
                                    )
                              auto-mode-alist
                              )
      )
(defun my-makefile-mode-hook ()
  (setq indent-tabs-mode 't)
  )
(add-hook 'makefile-mode-hook 'my-makefile-mode-hook)


;------
; 16進
;------
;(setq hexlify-command "D:/winapp/Meadow3.00-dev/bin/hexl -hex ")
;(setq dehexlify-command "D:/winapp/Meadow3.00-dev/bin/hexl -de -hex ")


;--------
; GLOBAL
;--------
(autoload 'gtags-mode "/app/cygwin/local/share/gtags/gtags" "" t)
(setq gtags-mode-hook
      '(lambda ()
	 (local-set-key "\M-t" 'gtags-find-tag)
	 (local-set-key "\M-r" 'gtags-find-rtag)
	 (local-set-key "\M-s" 'gtags-find-symbol)
	 (local-set-key "\C-t" 'gtags-pop-stack)
	 ))
(add-hook 'c-mode-common-hook
	  '(lambda()
	     (gtags-mode 1)
	     ))
(setq gtags-auto-update t)
(setq gtags-ignore-case nil)


;== EOF ==
