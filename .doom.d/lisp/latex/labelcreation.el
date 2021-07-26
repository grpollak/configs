;;; lisp/latex/labelcreation.el -*- lexical-binding: t; -*-
(defun create-label-for-theorem (title)
    (downcase(replace-regexp-in-string "[\\$]*[^\\$\\\\]\\$" ""
                (replace-regexp-in-string "[[:space:]]" "_"
                        (replace-regexp-in-string "\\\\" ""
                                (replace-regexp-in-string "\\\\([\\\\]\\\\([^ ]*\\\\|[^\\\\]\\\\)\\\\|[\\\\$][^\\\\$]*[\\\\$]\\\\)" ""
                                        (replace-regexp-in-string "[\\\\tc\{black\}\{].*\}" "" title nil t
                                        )
                                )
                        )
                )
                    )
           )
)

(provide 'create-label-for-theorem)
