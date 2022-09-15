;;; Compiled snippets and support files for `c++-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'c++-mode
                     '(("size" "size_t ${1:name} ${2: = ${3:value};}" "size_t" nil nil nil "/home/pollakg/.doom.d/snippets/c++-mode/size_t" nil nil)
                       ("rsig" "#include<csignal>\nstd::raise(SIGINT);$0" "rsig" nil nil nil "/home/pollakg/.doom.d/snippets/c++-mode/rsig" nil nil)
                       ("printff" "printf(\"$0\"); fflush(stdout);" "printf_flush" nil
                        ("korali")
                        nil "/home/pollakg/.doom.d/snippets/c++-mode/korali_printf" nil nil)
                       ("iv" "#include <vector>\n" "#include <vector>" nil nil nil "/home/pollakg/.doom.d/snippets/c++-mode/include_vector" nil "iv")
                       ("iset" "#include <set>\n" "#include <set>" nil nil nil "/home/pollakg/.doom.d/snippets/c++-mode/include_set" nil "iset")
                       ("cout" "std::cout << \"$1: \" << $1 << std::endl;" "cout" nil nil nil "/home/pollakg/.doom.d/snippets/c++-mode/cout" nil nil)
                       ("comment" "/*###########################################\n   $1\n*/###########################################\n$0" "comment" nil nil nil "/home/pollakg/.doom.d/snippets/c++-mode/comment" nil nil)))


;;; Do not edit! File generated at Tue May 17 09:43:05 2022
