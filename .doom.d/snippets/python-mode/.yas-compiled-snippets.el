;;; Compiled snippets and support files for `python-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'python-mode
                     '(("withopen" "with open(${1:filepath}) as fh:\n     $0" "with open" nil
                        ("file")
                        nil "/home/pollakg/.doom.d/snippets/python-mode/withopen" nil nil)
                       ("transformer" "from sklearn.utils.validation import check_X_y, check_array, check_is_fitted\n\nclass $1(skl.base.BaseEstimator, skl.base.TransformerMixin):\n    \"\"\"$2\"\"\"\n    def __init__(self):\n        super($1, self).__init__()\n        ${3:# TODO: initialize...}\n\n    def fit(self, X, y):\n        \"\"\"Can be used to fit parameters\n            if we only want to transform just return self\n        \"\"\"\n        # check if X and y are consistent\n        # multi_output for multi labels\n        X, y = check_X_y(X, y, multi_output=False)\n        ${4:# TODO: implement, fit if we want to fit\n            # then store fitted coefficients but do not transform X yet}\n        return self\n\n    def transform(self, X, y=None):\n        # Checks if the estimator is fitted by verifying the presence\n        # of “all_or_any” of the passed attributes rais a NotFittedError\n        # with message otherwise \n        ${5:check_is_fitted(self, ${6:[\"attributes\"]})}\n        X = check_array(X)\n        ${7:# TODO: implement and return transformed X}\n\n\n\n" "Scikit Transformer derived class" nil nil nil "/home/pollakg/.doom.d/snippets/python-mode/transformer" nil nil)
                       ("pvar" "print(f\"$1: {$1}\\n\")$0" "printvar" nil nil nil "/home/pollakg/.doom.d/snippets/python-mode/printvar" nil nil)
                       ("prt" "print($1)$0" "print" nil nil nil "/home/pollakg/.doom.d/snippets/python-mode/print" nil nil)
                       ("pdb" "import pdb; pdb.set_trace()" "pdb" nil nil nil "/home/pollakg/.doom.d/snippets/python-mode/pdb-breakpoint" nil nil)
                       ("pdb" "import pdb; pdb.set_trace()" "pdb" nil nil nil "/home/pollakg/.doom.d/snippets/python-mode/pdb" nil nil)
                       ("ifmain" "if __name__ == \"__main__\":\n   $0" "if name main" nil
                        ("magic")
                        nil "/home/pollakg/.doom.d/snippets/python-mode/if-name-main" nil nil)
                       ("def" "def ${1:name}(${2:args}):\n    ${3:pass}$0" "def" nil
                        ("functions")
                        nil "/home/pollakg/.doom.d/snippets/python-mode/def" nil nil)
                       ("argparser" "import argparse\nparser = argparse.ArgumentParser(${1:formatter_class=argparse.ArgumentDefaultsHelpFormatter})\n$0\nargs = parser.parse_args()" "argparser" nil
                        ("argparser")
                        nil "/home/pollakg/.doom.d/snippets/python-mode/argparser" nil nil)
                       ("argp.bool" "parser.add_argument(\n    \"-${1:short}\"\n    \"--${2:long}\",\n    help=\"${3:help message}\",\n    ${4:required=\"${5:False}\"},\n    action=\"store_${6:true/false}\"\n)" "argp.bool" nil
                        ("argparser")
                        nil "/home/pollakg/.doom.d/snippets/python-mode/argp.bool" nil nil)
                       ("argp.add" "parser.add_argument(\n    \"-${1:short}\",\n    \"--${2:long}\",\n    help=\"${3:help message}\",${4:\n    type=${5:type},}${6:\n    default=${7:\",\"},}\n    required=${9:False},${10:\n    choices=[${11:Choice1, Choice2, ...}]}\n)\n$0" "argp.add" nil
                        ("argparser")
                        nil "/home/pollakg/.doom.d/snippets/python-mode/argp.add" nil nil)))


;;; Do not edit! File generated at Tue May 17 09:43:06 2022
