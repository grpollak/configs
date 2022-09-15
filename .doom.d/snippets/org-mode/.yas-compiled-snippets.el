;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
                     '(("use" "* ${1:Title}\n  ;;${2:Description}\n  #+BEGIN_SRC emacs-lisp\n  (use-package ${3:package}\n  :ensure t\n  :config\n  )\n  #+END_SRC" "use-package" nil nil nil "/home/pollakg/.doom.d/snippets/org-mode/use-package" nil nil)
                       ("ipya" "#+BEGIN_SRC ipython :session ${1::ipyfile ${2:$$(let ((temporary-file-directory \"./\")) (make-temp-file \"py\" nil \".png\"))} }:exports ${3:both}\n$0\n#+END_SRC\n" "ipython_advanced" nil nil nil "/home/pollakg/.doom.d/snippets/org-mode/ipython_advanced" nil nil)
                       ("ipy" "#+BEGIN_SRC ipython :session ${2:mysession} :results ${3:raw drawer}\n    $0\n#+END_SRC" "ipython" nil nil nil "/home/pollakg/.doom.d/snippets/org-mode/ipython" nil nil)
                       ("src" "#+begin_src $1\n$0\n#+end_src" "Plain SRC Block" nil nil nil "/home/pollakg/.doom.d/snippets/org-mode/SRC" nil nil)))


;;; Do not edit! File generated at Tue May 17 09:43:05 2022
