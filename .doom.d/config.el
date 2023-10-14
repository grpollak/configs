(setq user-full-name "Georg R. Pollak" user-mail-address "pollakgeorg@gmail.com")

(setq initial-buffer-choice "~/org/todo.org")

(load-file (expand-file-name (concat doom-private-dir "lisp/general/open-file-at-cursor-immediate-done.el")))
(with-eval-after-load 'evil-maps
  (define-key evil-visual-state-map (kbd "g f") 'open-file-at-cursor-immediate-done)
  (define-key evil-normal-state-map (kbd "g f") 'open-file-at-cursor-immediate-done)
)

(setq initial-major-mode 'org-mode)

(defun doom/ediff-init-and-example ()
  "ediff the current `init.el' with the example in doom-emacs-dir"
  (interactive)
  (ediff-files (concat doom-private-dir "init.el")
               (concat doom-emacs-dir "init.example.el")))

(define-key! help-map
  "di"   #'doom/ediff-init-and-example
)

(setq-default tab-width 4)

(add-to-list 'load-path (expand-file-name "~/.doom.d/lisp/"))

(map! :leader
      :desc "New journal entry"
      "b b" #'projectile-switch-to-buffer)

;; (after! evil-snipe (evil-snipe-mode -1))
(remove-hook 'doom-first-input-hook #'evil-snipe-mode)

;; Add the j and k keys to move to next and previous files in peed-dired mode
(evil-define-key 'normal peep-dired-mode-map
  (kbd "j") 'peep-dired-next-file
  (kbd "k") 'peep-dired-prev-file)
(add-hook 'peep-dired-hook 'evil-normalize-keymaps)

;; Add the key binding SPC d p to toggle peep-dired-mode while in dired (you can add the key binding you like)
(map! :leader
       (:after dired
        (:map dired-mode-map
         :desc "peep mode" "d p" #'peep-dired)))

(setq image-dired-thumb-size 500)
(setq image-dired-thumb-width 500)
(setq image-dired-thumb-height 500)
(setq image-dired-thumb-margin 2)
(setq image-dired-thumb-relief 0)

(use-package! helm-descbinds
  :hook (helm-mode . helm-descbinds-mode)
  :bind (
         ("C-h b" . helm-descbinds)
        )
)

;; (setq doom-theme 'doom-one)
(load-theme 'sanityinc-tomorrow-eighties t)
;; (load-theme 'base16-tomorrow-night-eighties t)

;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

(use-package which-func
  :commands which-function-mode
  :demand
  :config (which-function-mode))

(setq lsp-clients-clangd-args '("-j=3"
                                "--background-index"
                                "--clang-tidy"
                                "--completion-style=detailed"
                                "--header-insertion=iwyu"))
(after! lsp-clangd (set-lsp-priority! 'clangd 2))
(use-package lsp-mode
  :hook ((prog-mode . lsp-deferred))
  :commands (lsp lsp-deferred)
  :config
  (progn
    (lsp-register-client
     (make-lsp-client :new-connection (lsp-tramp-connection "clangd")
                      :major-modes '(c-mode c++-mode)
                      :remote? t
                      :server-id 'clangd-remote))))
(add-to-list 'auto-mode-alist '("\\.hpp.base\\'" . cpp-mode))
(add-to-list 'auto-mode-alist '("\\.cpp.base\\'" . cpp-mode))
(add-hook 'emacs-lisp-mode #'lsp)

(load "gendoxy.el")

;; (setq leetcode-save-solutions t)
;; (setq leetcode-directory "~/leetcode")
(use-package leetcode
    :config
    (setq leetcode-path "~/leetcode/"
          leetcode-language "c++")
)

(setq org-hide-emphasis-markers t)
(setq org-directory "~/org/")
(setq org-agenda-files (list "~/org" "~/.doom.d/"))

(use-package projectile
  :config
  (setq projectile-globally-ignored-directories
        '(".git"
          ".ccls-cache"
          "docs/"
          ".stack-work"
          ".clang-format"
          ".clang-format"
          ".cquery_cached_index"))
  )

(setq +latex-viewers '(evince))

(defun get-tex-master ()
  "Sets the Tex-Master to projectile-project-root/formulary.tex"
  ;; (setq TeX-master)
  (concat (projectile-project-root) "formulary.tex")
)

(setq LaTeX-indent-level 4)
;; TODO: somehow returns void variable formulary
(use-package tex
    :config
    (setq-default TeX-master "formulary"))

;; nomenclature for latex
(eval-after-load "tex"
  '(add-to-list 'TeX-command-list
                '("Nomenclature" "makeindex %s.nlo -s nomencl.ist -o %s.nls"
                  (lambda (name command file)
                    (TeX-run-compile name command file)
                    (TeX-process-set-variable file 'TeX-command-next TeX-command-default))
                  nil t :help "Create nomenclature file")))

;; (after! tex
;;   (setq TeX-command-extra-options "-shell-escape")

;;   (defun compile-branch-name ()
;;     (interactive)
;;     (let* ((current-branch (magit-get-current-branch))
;;            (output-file (concat current-branch ".pdf"))
;;            (TeX-command (concat "latexmk -pdf -output-directory="
;;                                (file-name-directory (TeX-master-file))
;;                                " -jobname=" output-file " "
;;                                TeX-command)))
;;       (TeX-command-master)))

;;   (map! :map LaTeX-mode-map
;;         :localleader
;;         :desc "Compile" "c" #'compile-branch-name)) ;

(setq +latex-viewers '(evince))

(use-package px)

(load-file (expand-file-name (concat doom-private-dir "lisp/latex/labelcreation.el")))

;; TODO: append .cfg files to rainbow-latex-colors-major-mode-list somehow
(use-package rainbow-mode)

;; (setq reftex-default-bibliography "/home/pollakg/zotero/zotero_bibliography.bib") ;

(after! citar
  (setq! citar-bibliography '("/home/pollakg/zotero/zotero_bibliography.bib"))
  ;; (setq! citar-notes-paths '("/home/pollakg/zotero/Notes"))
  (setq! citar-at-point-function 'embark-act)
  (defun citar-file-open (file)  ;; open pdf in external viewer
    "Open FILE."
    (if (member (file-name-extension file) '("html" "pdf"))
        (citar-file-open-external (expand-file-name file))
      (funcall citar-file-open-function (expand-file-name file))))
  (citar-filenotify-setup '(LaTeX-mode-hook org-mode-hook)) ;; autosync .bib file

)

(use-package sphinx-doc
:bind (:map sphinx-doc-mode-map
            ("SPC C-d" . sphinx-doc))
)

;; (use-package elpy
;; :config
;;     (progn (elpy-enable)
;;         (setq python-shell-interpreter "ipython"
;;         python-shell-interpreter-args "-i --simple-prompt"
;;         python-shell-prompt-detect-failure-warning nil)
;;         (add-to-list 'python-shell-completion-native-disabled-interpreters "jupyter")
;;     )
;; )
;; TODO:  (add-hook 'python-mode-hook 'jedi:setup)
;(setq python-shell-interpreter "ipython5" python-shell-interpreter-args "--simple-prompt --pprint")
;(elpy-use-ipython) #+END_SRC #+RESULTS: : /usr/local/anaconda3/bin/anaconda ** EPC
;;Requirement for Jedi
;#+BEGIN_SRC emacs-lisp
;(use-package epc ;:defer t)
;(setq jedi:server-command '("/Users/pollakg/.emacs.d/elpa/jedi-core-20170121.610/jediepcserver.py"))
(setq +python-ipython-repl-args '("-i" "--simple-prompt" "--no-color-info"))
(setq +python-jupyter-repl-args '("--simple-prompt"))
;; (setq python-shell-interpreter "ipython" python-shell-interpreter-args "-i --simple-prompt" python-shell-prompt-detect-failure-warning nil)

(add-hook 'before-save-hook 'py-isort-before-save)

(after! dap-mode
  (setq dap-python-debugger 'debugpy))
(setq dap-auto-configure-mode t)
;; if you installed debugpy, you need to set this
;; https://github.com/emacs-lsp/dap-mode/issues/306
(setq dap-python-debugger 'debugpy)
(map! :map dap-mode-map
      :leader
      :prefix ("d" . "dap")
      ;; basics
      :desc "dap next"          "n" #'dap-next
      :desc "dap step in"       "i" #'dap-step-in
      :desc "dap step out"      "o" #'dap-step-out
      :desc "dap continue"      "c" #'dap-continue
      :desc "dap hydra"         "h" #'dap-hydra
      :desc "dap debug restart" "r" #'dap-debug-restart
      :desc "dap debug"         "s" #'dap-debug

      ;; debug
      :prefix ("dd" . "Debug")
      :desc "dap debug recent"  "r" #'dap-debug-recent
      :desc "dap debug last"    "l" #'dap-debug-last

      ;; eval
      :prefix ("de" . "Eval")
      :desc "eval"                "e" #'dap-eval
      :desc "eval region"         "r" #'dap-eval-region
      :desc "eval thing at point" "s" #'dap-eval-thing-at-point
      :desc "add expression"      "a" #'dap-ui-expressions-add
      :desc "remove expression"   "d" #'dap-ui-expressions-remove

      :prefix ("db" . "Breakpoint")
      :desc "dap breakpoint toggle"      "b" #'dap-breakpoint-toggle
      :desc "dap breakpoint condition"   "c" #'dap-breakpoint-condition
      :desc "dap breakpoint hit count"   "h" #'dap-breakpoint-hit-condition
      :desc "dap breakpoint log message" "l" #'dap-breakpoint-log-message)

(setq comint-prompt-read-only t)
(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq comint-move-point-for-output t)

(use-package outline
  :custom
  (outline-regexp "[#]+"))

(use-package polymode
  :ensure t
  :commands (R)
)

(use-package poly-R
  :ensure t
)

;; ignore all spaces
(custom-set-variables
 '(git-gutter:diff-option "-w"))

;; (add-to-list 'tramp-remote-path "/cluster/apps/git/2.11.0/x86_64/bin/git")

(use-package! image
  :custom
  ;; Enable converting external formats (ie. webp) to internal ones.
  (image-use-external-converter t))

(setq vterm-always-compile-module t)
(use-package! vterm
    :init
    (progn
        (setq vterm-always-compile-module t)
    )
    :config
    (progn
        ;; The next key sequence comes from the terminal
        ;; I.e. to send key sequences to the terminal that are already bound to emacs
        (define-key vterm-mode-map (kbd "C-q") #'vterm-send-next-key)
        ;; Display vterm buffer fullscreen
        (setq vterm-toggle-fullscreen-p nil)
        (add-to-list 'display-buffer-alist
                    '((lambda (buffer-or-name _)
                        (let ((buffer (get-buffer buffer-or-name)))
                        (with-current-buffer buffer
                            (or (equal major-mode 'vterm-mode)
                                (string-prefix-p vterm-buffer-name (buffer-name buffer))))))
                    (display-buffer-reuse-window display-buffer-pop-up-frame))))
    :ensure t)

(use-package! multi-vterm
        :config
        (add-hook 'vterm-mode-hook
                        (lambda ()
                        (setq-local evil-insert-state-cursor 'box)
                        (evil-insert-state)))
        (define-key vterm-mode-map [return]                      #'vterm-send-return)

        (setq vterm-keymap-exceptions nil)
        (evil-define-key 'insert vterm-mode-map (kbd "C-e")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-f")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-a")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-v")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-b")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-w")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-u")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-d")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-n")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-m")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-p")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-j")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-k")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-r")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-t")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-g")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-c")      #'vterm--self-insert)
        (evil-define-key 'insert vterm-mode-map (kbd "C-SPC")    #'vterm--self-insert)
        (evil-define-key 'normal vterm-mode-map (kbd "C-d")      #'vterm--self-insert)
        (evil-define-key 'normal vterm-mode-map (kbd ",c")       #'multi-vterm)
        (evil-define-key 'normal vterm-mode-map (kbd ",n")       #'multi-vterm-next)
        (evil-define-key 'normal vterm-mode-map (kbd ",p")       #'multi-vterm-prev)
        (evil-define-key 'normal vterm-mode-map (kbd "i")        #'evil-insert-resume)
        (evil-define-key 'normal vterm-mode-map (kbd "o")        #'evil-insert-resume)
        (evil-define-key 'normal vterm-mode-map (kbd "<return>") #'evil-insert-resume))

;; (after! hl-todo
;;     (setq hl-todo-keyword-faces
;;         '(("IMPORTANT" . "#967E1E")
;;           ("DONE" . "#afd8af")
;;           )))
(use-package hl-todo
:hook (prog-mode . hl-todo-mode)
:config
(setq hl-todo-highlight-punctuation ":"
        hl-todo-keyword-faces
        '(("TODO"       warning bold)
        ("FIXME"      error bold)
        ("HACK"       font-lock-constant-face bold)
        ("REVIEW"     font-lock-keyword-face bold)
        ("DONE"       font-lock-keyword-face bold)
        ("IMPORTANT"  font-lock-keyword-face bold)
        ("NOTE"       success bold)
        ("DEPRECATED" font-lock-doc-face bold))))

;; (load! "lisp/label_images_by_score")
(use-package! label-images-by-score-mode
  :load-path "lisp/label-images-by-score-mode"
  ;; :bind
  ;; (("k" . label-images-by-score-next)
  ;;  ("j" . label-images-by-score-prev)
  ;;  ("1" . label-images-by-score-score1)
  ;;  ("2" . label-images-by-score-score2)
  ;;  ("3" . label-images-by-score-score3)
  ;;  ("4" . label-images-by-score-score4)
  ;;  ("5" . label-images-by-score-score5)
  ;;  ("q" . label-images-by-score-quit))
  )
;; (map! :after label-images-by-score-mode
;;       :map label-images-by-score-mode-map
;;       "k" #'label-images-by-score-next
;;       "j" #'label-images-by-score-prev
;;       "1" #'label-images-by-score-score1
;;       "2" #'label-images-by-score-score2
;;       "3" #'label-images-by-score-score3
;;       "4" #'label-images-by-score-score4
;;       "5" #'label-images-by-score-score5
;;       "q" #'label-images-by-score-quit
;; )
