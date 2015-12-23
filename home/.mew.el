;;; Mew Easy Settings (generated automatically)

;; Optional setup (Read Mail menu for Emacs 21):
(if (boundp 'read-mail-command)
    (setq read-mail-command 'mew))

;; Optional setup (e.g. C-xm for sending a message):
(if (boundp 'mail-user-agent)
    (setq mail-user-agent 'mew-user-agent))
(if (fboundp 'define-mail-user-agent)
    (define-mail-user-agent
      'mew-user-agent
      'mew-user-agent-compose
      'mew-draft-send-letter
      'mew-draft-kill
      'mew-send-hook))

(setq mew-debug 'net)

;; 
;(setq mew-cc  nil)

;; backup message
;(setq mew-fcc "+backup")
(setq mew-fcc "+Backup")

;; do not show demo
;(setq mew-demo nil)

;; modify Cc:
;(setq mew-replyto-to-list '("Reply-To:"))
;(setq mew-replyto-cc-list nil)

;; do not get mail when startup (offline mode)
(setq mew-auto-get nil)

;; sample of guess
;(setq mew-case-guess-alist
;      '(("X-Mailer:"
;        ("Outlook" . "microsoft"))
;       ))
;(setq mew-case-guess-when-prepared t)
;(setq mew-case-guess-when-replied  t)
;(setq mew-case-guess-when-composed t)
;(setq mew-case-guess-addition      t)

;; print message
;(setq mew-w32-prog-print     "notepad.exe")
;(setq mew-w32-prog-print-arg "/p")
;(setq mew-w32-cs-print       'shift_jis-dos)
;(define-process-argument-editing "/notepad\.exe$"
;  (lambda (x)
;    (general-process-argument-editing-function x nil t)))

;; pick with japanese (Perl is required).
;(setq mew-prog-grep "mg")
;(setq mew-prog-grep-opts '("-j" "jis" "-l" "-e" "-x" "&mime"))

;; mouse click and start web browser
;(require 'mew-browse)
;(define-key global-map [S-mouse-2] 'browse-url-at-mouse)

;; enable password caching
(setq mew-use-cached-passwd t)
;; 一時的な設定
;(setq mew-use-master-passwd t)

;; fancy threading
(setq mew-use-fancy-thread t)
;; show thread separator
;(setq mew-use-thread-separator t)

;; add review mark('*') automatically
(setq mew-scan-form-mark-review t)
;; add delete mark('d') automatically
(setq mew-scan-form-mark-delete t)
; 未読マークを付ける
(setq mew-use-unread-mark t)
(setq mew-delete-unread-mark-by-mark nil)
; 自分宛てのメッセージに自動的に `*' マークを付ける
(setq mew-summary-form-mark-review nil)

;; biff
;(setq mew-use-biff t)
;(setq mew-use-biff-bell t)

; 規格違反のメッセージを復号するか否か
;(setq mew-decode-broken nil)
; use Windows NT/2000 and NTFS
(setq mew-touch-folder-p nil)
; To: の馬鹿でかいのを…？
;(setq mew-header-reasonable-size 10000)
; To: の馬鹿でかいのを refile するときにでる警告を抑える。
; しかし、Subject が`** no subject **'になるのは変わらず
;(setq mew-header-max-depth 800)

; 一時的な設定（Mew 6.2 on Meadow 2.10(Emacs 21.4.1) だとエラーになるので…）
;(setq mew-flowed-auto-wrap nil)

; フォルダー名補完の際に大文字／小文字の違いを無視するか？
(setq mew-complete-folder-ignore-case t)
; 先頭／末尾にジャンプした後にメッセージを表示するか？
(setq mew-summary-jump-top-then-display nil)
(setq mew-summary-jump-bottom-then-display nil)

; Face
;(setq mew-use-highlight-mouse-line t)

(setq mew-cite-fields '("From:" "Subject:" "Date:" "Message-Id:"))
(setq mew-cite-format " From: %s\n Subject: %s\n Date: %s\n Message-Id: %s\n/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
(setq mew-cite-prefix "> ")
(setq mew-ask-charset '("us-ascii" "iso-2022-jp" "utf-8"))
;(setq mew-cite-prefix-function (function mew-cite-prefix-username))
(setq mew-addrbook-for-cite-prefix 'nickname)
;(setq mew-scan-form
;      '(type (5 date) " " (16 from) " " (0 subj)))
;(setq mew-thread-column 30)
;; Mew 4 でメッセージ番号を表示する
;(defun mew-summary-form-num ()
;  (MEW-NUM))
;(setq mew-summary-form
;      `((-4 num) type (5 date) " " (11 from) " " t (0 subj)))
(setq mew-summary-form
      '(type (5 date) " " (16 from) " " t (0 subj)))
(setq mew-attach-move-next-after-copy t)

; 転送時に削除するヘッダー
;(setq mew-field-delete-for-forwarding '("Lines:" "Status:" "Posted:" "Forwarded:" "Replied:" "X-UIDL:" "Received:" "Return-Path:" "X-eGroups-Return:"))
;(setq mew-field-delete-for-forwarding '("Lines:" "Status:" "Posted:" "Forwarded:" "Replied:" "X-UIDL:"))

; 'y' で保存する際のデフォルトディレクトリを以前指定したものにする
(setq mew-summary-preserve-dir t)
; 添付する際のデフォルトディレクトリを以前指定したものにする
(setq mew-draft-preserve-dir t)


;
(setq mew-use-suffix t)

; mg
; Search an EUC key (after converting to JIS) on JIS messages
; decoding their encoded-words. (ignore case)
(setq mew-prog-grep "mg")
(setq mew-prog-grep-opts '("-j" "jis" "-l" "-i" "-e" "-x" "&mime"))
(setq mew-prog-vgrep mew-prog-grep)
(setq mew-prog-vgrep-opts mew-prog-grep-opts)

; マルチパート
(setq mew-content-type "Application/Octet-Stream")

; PGP
(setq mew-prog-pgp "gpg")
(setq mew-prog-gpg "gpg")
; すべてのメッセージに対し署名する
(setq mew-protect-privacy-always nil)
(setq mew-protect-privacy-always-type 'pgp-signature)
; 暗号化されたメッセージへの返答メッセージに対し、暗号化する
(setq mew-protect-privacy-encrypted t)
(setq mew-protect-privacy-encrypted-type 'pgp-encryption)
; (a)GnuPG Agent
;(setq mew-prog-pgpd-arg '(("") ("") ("") ("--use-agent" "--decrypt"))
;      mew-prog-pgps-arg '(("") ("") ("") ("--use-agent" "--detach-sign" "--armor" "--status-fd" "1")))
; (b)mew-win32-gpg-agent
;(require 'mew-win32-gpg-agent)

;; w3m
;(condition-case nil
;    (require 'mew-w3m)
;  (file-error nil))
;(setq w3m-type 'w3m-m17n)
;;(setq w3m-type 'w3m)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Using the "eww" browser
;;;
;;; shr-render-region is built into Emacs 24.1 and later.

(setq mew-use-text/html t)		; decode HTML for all folders
(setq mew-mime-multipart-alternative-list '("Text/Html" "Text/Plain" ".*"))
(if (and (fboundp 'shr-render-region)
	 ;; \\[shr-render-region] requires Emacs to be compiled with libxml2. 
	 (fboundp 'libxml-parse-html-region))
    (setq mew-prog-text/html 'shr-render-region))

; hook
(defun my-mew-init-hook ()
  (define-key mew-message-mode-map [mouse-2] 'browse-url-at-mouse)
  )
(add-hook 'mew-init-hook 'my-mew-init-hook)

; MHC
;(setq mhc-mailer-package 'mew)
;(autoload 'mhc-mode "mhc" nil t)
;(add-hook 'mew-summary-mode-hook 'mhc-mode)
;(add-hook 'mew-virtual-mode-hook 'mhc-mode)
;(add-hook 'mew-message-hook      'mhc-misc-hdr-decode)
;(autoload 'mhc-mew-setup "mhc-mew")
;(add-hook 'mew-init-hook 'mhc-mew-setup)
;(setq mhc-summary-language 'japanese)
