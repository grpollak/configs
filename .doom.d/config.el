(setq user-full-name "Georg R. Pollak" user-mail-address "pollakgeorg@gmail.com")

(setq initial-buffer-choice "~/org/uni.org")

(load-file (expand-file-name "~/.doom.d/lisp/general/open-file-at-cursor-immediate-done.el"))
(with-eval-after-load 'evil-maps
  (define-key evil-visual-state-map (kbd "g f") 'open-file-at-cursor-immediate-done)
  (define-key evil-normal-state-map (kbd "g f") 'open-file-at-cursor-immediate-done)
)

(setq initial-major-mode 'org-mode)

(setq-default tab-width 4)

;; (add-to-list 'load-path (expand-file-name "~/.doom.d/lisp/leetcode"))
(use-package! leetcode
:config
    (progn
        (setq leetcode-prefer-language "cpp")
        (setq leetcode-save-solutions t)
        (setq leetcode-directory "~/leetcode"))
)

(after! evil-snipe (evil-snipe-mode -1))
;; (evil-define-key '(normal motion) evil-snipe-local-mode-map "z z" 'evil-snipe-s)
;; (evil-define-key '(normal motion) evil-snipe-local-mode-map "z Z" 'evil-snipe-S)

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

(setq display-line-numbers-type 'rel)

(load "gendoxy.el")

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

(setq +latex-viewers '(evince))

(use-package px)

(load-file (expand-file-name "~/.doom.d/lisp/latex/labelcreation.el"))

;; TODO: append .cfg files to rainbow-latex-colors-major-mode-list somehow
(use-package rainbow-mode)

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

;; (setq matlab-shell-command "/usr/local/bin/matlab")
;; (setq matlab-shell-command "matlab")
;; (setq matlab-shell-command-switches (list "-nodisplay"))
(use-package matlab-mode
:mode ("\\.m$" . matlab-mode)
;(use-package matlab-load)
:config
(progn
    (setq matlab-shell-command "matlab")
    (setq matlab-shell-command-switches (quote ("-nodisplay -nosplash")))
    ;(setq matlab-server-executable "/path/to/matlab/binary")
    (setq matlab-indent-function t)
)
(eval-after-load 'company
    '(add-to-list 'company-backends 'company-matlab))
    (setq matlab-shell-command-switches (quote ("-nodisplay -nosplash")))
    (eval-after-load 'flycheck
    '(require 'flycheck-matlab-mlint)))

;; the default
;; (after! hl-todo
;;     (setq hl-todo-keyword-faces
;;         '(("IMPORTANT"   . "#967E1E"))))
;; (use-package hl-todo
;; :hook (prog-mode . hl-todo-mode)
;; :config
;; (setq hl-todo-highlight-punctuation ":"
;;         hl-todo-keyword-faces
;;         `(("TODO"       warning bold)
;;         ("FIXME"      error bold)
;;         ("HACK"       font-lock-constant-face bold)
;;         ("REVIEW"     font-lock-keyword-face bold)
;;         ("IMPORTANT"  font-lock-keyword-face bold)
;;         ("NOTE"       success bold)
;;         ("DEPRECATED" font-lock-doc-face bold))))

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

;; (setq leetcode-save-solutions t)
;; (setq leetcode-directory "~/leetcode")
(use-package leetcode
    :config
    (setq leetcode-path "~/leetcode/"
          leetcode-language "c++")
)
