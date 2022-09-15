;;; Compiled snippets and support files for `latex-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
                     '(("wrapink" "\\begin{wrapfigure}{${1:r}}{${2:0.4}\\linewidth}	\n\\centering{\n	\\inkscape[${3:80pt}]{${4:figures/}$5.pdf_tex}\n}\n\\end{wrapfigure}\n$0" "wrapink" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/wrapink" nil nil)
                       ("wrapfig" "\\begin{wrapfigure}{${1:r}}{${2:0.45\\linewidth}}\n		\\centering\n		\\vspace{-10pt}\n		\\includegraphics[${2:width=0.45\\linewidth}]{figures/${3:path_to_file}.png}\n		${4:\\caption{${5:text}}}\n\\end{wrapfigure}\n$0" "wrapfig" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/wrapfig" nil nil)
                       ("wtil" "\\widetilde{$1}$0" "widetilde" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/widetilde" nil nil)
                       ("veci" "\\\\vec{$1}^{-1}$0" "vector_inverse" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/vector_inverse" nil nil)
                       ("vec" "\\\\vec{$1}$0" "vector" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/vector" nil nil)
                       ("underb" "\\underbrace{$1}_{$2}$0" "underbrace" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/underbrace" nil nil)
                       ("uml" "\\begin{figure}[H]	\n  \\centering\n  \\resizebox{${1:$2{:\\linewidth}}}{!}{\\tikzset{font=\\Huge}\\input{uml/${3:path}.tex}}\n\\end{figure}\n$0" "uml" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/uml" nil nil)
                       ("type" "\\begin{typebox}\\nospacing\n    \\begin{type}${1:[${2:title}]}${3:\\label{type:${2:$(create-label-for-theorem yas-text)}}}\n        $0\n    \\end{type}\n\\end{typebox}\n" "type" nil
                        ("theore")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/type" nil nil)
                       ("todo" "\\todo[${1:inline}]{$2}$0" "todo" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/todo" nil nil)
                       ("tnode" "\\node[draw, ${1:shape}, fill=${2:color}, ${3:right/left/below/above}${4:=${5:5pt} of ${6:node}] ${7:(label)} {${0:text}};" "tnode" nil
                        ("tikz")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/tnode" nil nil)
                       ("tmatrix" "\\begin{tikzpicture}[baseline=-0.5ex,\n            every left delimiter/.style={xshift=.75em},\n            every right delimiter/.style={xshift=-.75em}\n            ]\n    \\matrix (M) [\n    inner sep=1pt, nodes={inner sep=.2em}, \n    column sep=3pt, row sep=0.7pt,\n    matrix of math nodes, nodes in empty cells, right delimiter={]},left delimiter={[}]\n    {\n    1 & & 									&  \\\\\n        & &\\optlambda					 		&  \\\\\n        & & 									&  \\\\\n        & &           						&1 \\\\\n    };\n    \\draw[loosely dotted] (M-1-1)-- (M-4-4);\n    \\node [xshift=0.5em] at  (M-2-4.east) {$\\optidxk$};\n    \\node [yshift=0.8em] at  (M-1-3.north) {$\\optidxi$}; \n\\end{tikzpicture}\n" "tmatrix" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/tmatrix" nil nil)
                       ("tikzstandalone" "\\documentclass[dvipsnames,table]{standalone}\n\n\\input{`(projectile-project-root)`formularyETH/colors.cfg}\n\\usepackage{`(projectile-project-root)`formularyETH/formularyETH_underline}\n\\usepackage{`(projectile-project-root)`formularyETH/extern/formularyETH_scientific}\n\\usepackage{`(projectile-project-root)`formularyETH/formularyETH_GeneralPackages}\n\\usepackage{`(projectile-project-root)`formularyETH/extern/formularyETH_tikz}\n\\usepackage{`(projectile-project-root)`formularyMacros}\n% ======================================================================\n% Tikz\n% ======================================================================\n\\begin{document}\n\\begin{tikzpicture}[\n    ${1:my style/.style={\n            draw,color=black,fill=blue\n        }\n    }\n]\n$0\n\\end{tikzpicture}\n\\end{document}\n" "tikzstandalone" nil
                        ("tikz")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/tikzstandalone" nil nil)
                       ("tikzpicture" "\\begin{tikzpicture}[\n  ${1:font=${font=\\fontsize{30pt}{0pt}\\selectfont}},\n  ${3:my style/.style={\n    draw, color=black, fill=blue\n  }}\n]\n    $0\n\\end{tikzpicture}" "tikzpicture" nil
                        ("tikz")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/tikzpicture" nil nil)
                       ("tikzfigure" "\\vspace{-10pt}\n    \\begin{figure}[H]\n    \\centering\n    \\resizebox{\\linewidth}{!}{\n        \\begin{tikzpicture}[sloped]\n            $0\n        \\end{tikzpicture}\n        }\n\\end{figure}" "tikzfigure" nil
                        ("tikz")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/tikzfigure" nil nil)
                       ("thb" "\\begin{theorembox}\n	$1 \n\\end{theorembox}$0\n" "theorembox" nil
                        ("box")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/theorembox" nil nil)
                       ("theorem" "\\begin{theorembox}\\nospacing\n  \\begin{theorem}${1:[${2:title}]}${3:\\label{theorem:${2:$(downcase(replace-regexp-in-string \"[[:space:]]\" \"_\" yas-text))}}}\n	$4 \n  \\end{theorem}\n\\end{theorembox}$0" "theorem" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/theorem" nil nil)
                       ("texttt" "\\texttt{$1}$0" "texttt" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/texttt" nil nil)
                       ("texto" "\\texttt{\\optc{$1}}$0" "texto" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/texto" nil nil)
                       ("tei" "\\textit{$1}$0" "textit" nil
                        ("text")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/textit" nil nil)
                       ("tcc" "\\textcolor{${1:black}}{$2}$0" "textcolor" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/textcolor" nil nil)
                       ("te" "\\text{$1}$0" "text" nil
                        ("text")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/text" nil nil)
                       ("tcarrow" "\\drawloop[${1:options e.g. ->, stretch=1.1}]{${2:node}}{${3:start angle}}{${4:end angle}} ${5:node[${6:pos=0.5,left right ...}] {${7:label text}}};" "tcarrow" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/tcarrow" nil nil)
                       ("tc" "\\tc{${1:black}}{$2}$0" "tc" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/tc" nil nil)
                       ("tarrow" "\\draw[->,${1:bend right/left}] (${1:node1.east}) -- (${2:node2.west});" "tarrow" nil
                        ("tikz")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/tarrow" nil nil)
                       ("tabularx" "\\begin{tabularx}{${1:tablewidth}}{${2:(l|c|r|p[{width\\}]|m[{width\\}]|b[{width\\}])[|]}}\n${0:\\hline\ncell1 & cell2 & cell3 \\\\\\\n\\hline\ncell4 & cell5 & cell6 \\\\\\\n\\hline\ncell7 & cell8 & cell9 \\hline\n}\\end{tabularx}" "tabularx" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/tabularx" nil nil)
                       ("tabular" "\\begin{tabular}[${1:pos:(b|c|t)}]{${2:(l|c|r|p[{width\\}]|m[{width\\}]|b[{width\\}])[|]}}\n${0:\\hline\ncell1 & cell2 & cell3 \\\\\\\n\\hline\ncell4 & cell5 & cell6 \\\\\\\n\\hline\ncell7 & cell8 & cell9 \\hline\n}\\end{tabular}" "tabular" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/tabular" nil nil)
                       ("tl3" "$1 & $2 & $3 \\\\\\\n$0" "tableline3" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/tableline3" nil nil)
                       ("sum" "\\sum_{${1:i=1}}$0" "sum" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/sum" nil nil)
                       ("_" "_{\\text{$1}}$0" "subtext" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/subtext" nil nil)
                       ("ssssec" "\\subsubsubsection{${1:name}}${2:\\label{subsubsubsec:${1:$(downcase(replace-regexp-in-string \"[[:space:]]\" \"_\" yas-text))}}}\n$0\n" "subsubsubsection" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/subsubsubsection" nil nil)
                       ("sssecs" "\\subsubsection*{${1:name}}\n$0\n" "subsubsections" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/subsubsections" nil nil)
                       ("sssec" "\\subsubsection{${1:name}}${2:\\label{subsubsec:${1:$(downcase(replace-regexp-in-string \"[[:space:]]\" \"_\" yas-text))}}}\n$0" "subsubsection" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/subsubsection" nil nil)
                       ("ssecs" "\\subsection*{${1:name}}\n    ${2:\\label{subsec:${1:$(downcase(replace-regexp-in-string \"[[:space:]]\" \"_\" yas-text))}}}\n    ${3:\\stepcounter{subsection}}\n    $0" "subsections" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/subsections" nil nil)
                       ("ssec" "\\subsection{${1:name}}${2:\\label{subsec:${1:$(downcase(replace-regexp-in-string \"[[:space:]]\" \"_\" yas-text))}}}\n$0" "subsection" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/subsection" nil nil)
                       ("submod" "\\input{$1_submodule/src/$2}$0" "submodule" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/submodule" nil nil)
                       ("styleb" "\\begin{stylebox}${1:[${2:title}]}\\nospacing\n$0\n\\end{stylebox}" "stylebox" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/stylebox" nil nil)
                       ("shelle" "TeX-command-extra-options: \"-shell-escape\"" "shell-escape" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/shell-escape" nil nil)
                       ("set" "\\left\\\\{$1_{${2:i}}\\right\\\\}_{${3:$2=1}}^{${2:$(upcase yas-text)}}$0" "set" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/set" nil nil)
                       ("seq" "\\left($1_{${2:i}}\\right)_{${3:$2=1}}^{${2:$(upcase yas-text)}}$0" "seq" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/seq" nil nil)
                       ("secb" "\\begin{sectionbox}${1:[${2:Title}]}\\nospacing\n	$3	\n\\end{sectionbox}$0" "sectionbox" nil
                        ("box")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/sectionbox" nil nil)
                       ("sec" "\\section{${1:name}}${2:\\label{sec:${1:$(downcase(replace-regexp-in-string \"[[:space:]]\" \"_\" yas-text))}}}\n$0" "section" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/section" nil nil)
                       ("scomment" "% ${1:Comment}\n% ------------------------------------------------------------------------------ $0" "scomment" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/scomment" nil nil)
                       ("trd" "\\text{\\rd{$1}}$0" "rdtext" nil
                        ("text")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/rdtext" nil nil)
                       ("trdb" "\\text{\\rdb{$1}}$0" "rdbtext" nil
                        ("text")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/rdbtext" nil nil)
                       ("rdb" "\\rdb{$1}$0" "rdb" nil
                        ("text")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/rdb" nil nil)
                       ("rd" "\\rd{$1}$0" "rd" nil
                        ("text")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/rd" nil nil)
                       ("questionb" "\\begin{questionbox}${1:[${2:Title}]}\\nospacing\n	$3	\n\\end{questionbox}$0" "questionbox" nil
                        ("box")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/questionbox" nil nil)
                       ("pyin" "\\pythoninline{$1}$0" "pythoninline" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/pythoninline" nil nil)
                       ("proslist" "\\begin{proslist}\n\\item $0\n\\end{proslist}" "proslist" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/proslist" nil nil)
                       ("proposition" "\\begin{propositionbox}\\nospacing\n    \\begin{proposition}${1:[${2:title}]}${3:\\label{proposition:${2:$(create-label-for-theorem yas-text)}}}\n        $0\n    \\end{proposition}\n\\end{propositionbox}" "proposition" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/proposition" nil nil)
                       ("propb" "\\begin{propbox}\\nospacing\n	$1	\n\\end{propbox}$0" "propbox" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/propbox" nil nil)
                       ("propertyb" "\\begin{propertybox}\\nospacing\n   $0\n\\end{propertybox}" "propertybox" nil
                        ("box")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/propb" nil nil)
                       ("property" "\\begin{propertybox}\\nospacing\n    \\begin{property}${1:[${2:title}]}${3:\\label{property:${2:$(downcase(\n            replace-regexp-in-string \"$\"  \"\"\n            (\n                 replace-regexp-in-string \"[[:space:]]\" \"_\"\n                 (\n                    replace-regexp-in-string \"\\\\\\\\([\\\\\\\\]\\\\\\\\([^ ]*\\\\\\\\|[^\\\\\\\\]\\\\\\\\)\\\\\\\\|[\\\\\\\\$][^\\\\\\\\$]*[\\\\\\\\$]\\\\\\\\)\" \"\" yas-text nil t\n                 )\n            )\n    )\n\n    )}}}\n        $0\n    \\end{property}\n\\end{propertybox}\n" "property" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/prop" nil nil)
                       ("proof" "\\begin{proofbox}\\nospacing\n    \\begin{proof}${1:[${2:title}]}${3:\\label{proof:${2:$(downcase(replace-regexp-in-string \"[[:space:]]\" \"_\" yas-text))}}}\n        $0\n    \\end{proof}\n\\end{proofbox}" "proof" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/proof" nil nil)
                       ("prod" "\\prod_{${1:\\\\idxi=1}}^{${2:N}}$0" "prod" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/prod" nil nil)
                       ("prob2" "\\prob${1:_{${2:x},${3:y}}}\\big($4\\big)$0" "prob2" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/prob" nil nil)
                       ("princ" "\\begin{principbox}\\nospacing\n    \\begin{princip}${1:[${2:title}]}${3:\\label{princip:${2:$(downcase(replace-regexp-in-string \"[[:space:]]\" \"_\" yas-text))}}}\n        $0\n    \\end{princip}\n\\end{principbox}" "principile" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/princpile" nil nil)
                       ("prb" "\\prob($1)$0" "probability \\prob" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/prb" nil nil)
                       ("postb" "\\begin{postbox}\\nospacing\n   $0\n\\end{postbox}" "postulatbox" nil
                        ("box")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/postulatbox" nil nil)
                       ("post" "\\begin{post}[${1:title}]\n    $0\n\\end{post}" "postulat" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/postulat" nil nil)
                       ("pcbox" "\\begin{plaincodebox}${1:<${2:minted options}>}${3:[${4:options}]}${5:{${6:language}}}\n $0\n\\end{plaincodebox}" "plaincodebox" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/plaincodebox" nil nil)
                       ("pgfplot" "\\documentclass[dvipsnames,table]{standalone}\n\n\\input{`(projectile-project-root)`formularyETH/colors.cfg}\n\\usepackage{`(projectile-project-root)`formularyETH/formularyETH_underline}\n\\usepackage{`(projectile-project-root)`formularyETH/extern/formularyETH_scientific}\n\\usepackage{`(projectile-project-root)`formularyETH/formularyETH_GeneralPackages}\n\\usepackage{`(projectile-project-root)`formularyETH/extern/formularyETH_tikz}\n\\usepackage{`(projectile-project-root)`formularyMacros}\n\\usepackage{`(projectile-project-root)`ml_submodule/macros/nlu}\n\\usepackage{`(projectile-project-root)`ml_submodule/macros/nn}\n\\usepackage{`(projectile-project-root)`ml_submodule/macros/ml}\n\\usepackage{`(projectile-project-root)`ml_submodule/macros/pac}\n% ======================================================================\n% PGFPlot\n% ======================================================================\n\\begin{document}\n\\begin{tikzpicture}[font=\\Huge]\n\n  %\\pgfplotsset{every axis/.append style={\n      % % xlabel={x label},\n      % ylabel={y label},\n      % % TICKS\n      % xtick style={draw=none},\n      % xtick pos=left,\n      % ticklabel style = {font=\\huge},\n      % % GRI\n      % xmajorgrids,\n      % x grid style={white},\n      % ymajorgrids,\n      % y grid style={white},\n      % % AXIS\n      % x axis line style={draw=none},\n      % xtick={-4,0,4},\n      % xticklabels={$label1$,label2, label3},\n      % axis lines=middle,\n      % axis line style={-latex, very thick, fill opacity=0.7, draw opacity=0.2, gray},\n      % axis background/.style={fill=seabornplot},\n      % % axis lines=middle,\n      % legend pos=north east,\n      % legend style={\n      % fill=background_col, draw=black,\n      % font=\\Huge,\n      % xshift=-5.5ex\n      % },\n    % }}\n\n  \\begin{axis}[\n    name=mygraph,\n    % title={My Title},\n    % yticklabel style = {xshift=-1.3ex},\n    xmin=${1:-2},\n    xmax=${2:2},\n    ymin=${3:-1},\n    ymax=${4:1},\n    ]\n\n    \\addplot [domain=$1:$2, samples=100,  thick, seaborngreen] {${0:x}};\n\n  \\end{axis}\n\\end{tikzpicture}\n\\end{document}" "pgfplot" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/pgfplot" nil nil)
                       ("pfrac" "\\pfrac{${1:numerator}}{${2:denominator}}$0" "pfrac" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/pfrac" nil nil)
                       ("pdv2" "\\pdv[${1:2}]{${2:numerator}}{${3:denominator}}$0" "pdv2" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/pdv2" nil nil)
                       ("pdv" "\\pdv{${1:numerator}}{${2:denominator}}$0" "pdv" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/pdv" nil nil)
                       ("partiald" "\\frac{\\partial$1}{\\partial$2}$0" "Parital derivative" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/parital" nil nil)
                       ("parag" "\\paragraph{${1:name}}${2:\\label{para:${1:$(downcase(replace-regexp-in-string \"[[:space:]]\" \"_\" yas-text))}}}\n$0" "paragraph" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/paragraph" nil nil)
                       ("optrb" "|\\optrl|$1|\\optrr|$0" "optrb" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/optrb" nil nil)
                       ("optb" "\\begin{optionsbox}${1:[${2:Options}]}${3:{${4:Title}}}\n	$0	\n\\end{optionsbox}" "optionsbox" nil
                        ("box")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/optionsbox" nil nil)
                       ("option" "\\begin{optionsbox}\\nospacing\n    \\begin{option}${1:[${2:title}]}${3:\\label{option:${2:$(create-label-for-theorem yas-text)}}}\n        $0\n    \\end{option}\n\\end{optionsbox}\n" "option" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/option" nil nil)
                       ("optct" "\\optc{\\texttt{$1}}$0\n" "optct" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/optct" nil nil)
                       ("optcc" "|\\texttt{\\optc{$1}}|$0" "optcc" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/optcc" nil nil)
                       ("optcb" "|\\optcll|$1|\\optclr$0" "optcb" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/optcb" nil nil)
                       ("optc" "\\optc{$1}$0" "optc" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/optc" nil nil)
                       ("optab" "|\\optal\\optc{\\texttt{$1}}\\optar|$0" "optab" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/optab" nil nil)
                       ("nblistnosep" "\\begin{numberlistnosep}\n\\item $1\n\\end{numberlistnosep}$0" "numberlistnosep" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/numberlistnosep" nil nil)
                       ("nblist" "\\begin{numberlist}\n\\item $1\n\\end{numberlist}$0" "numberlist" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/numberlist" nil nil)
                       ("nb" "\\begin{notebox}[${1:Note}]\\nospacing\n    $0\n\\end{notebox}" "notebox" nil
                        ("box")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/notebox" nil nil)
                       ("note" "\\note[item]<$1->{$2}$0" "note" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/note" nil nil)
                       ("nsp" "\\nospacing" "nospacing" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/nospacing" nil nil)
                       ("nl" "\\\\\\[-1\\jot]$0" "newsmall line for equations" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/newline" nil nil)
                       ("newcol" "	\\vfill\\columnbreak\n" "newcolumn" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/newcolumn" nil nil)
                       ("nal" "\\\\[-1\\jot]$0" "nalign" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/nalign" nil nil)
                       ("mlboxb" "\\begingroup\n\\catcode`\\!=\\active\n\\def!#1!{\\optc{\\texttt{#1}}}\n    \\begin{mintlinebox}${1:<${2:minted options}>}${3:[${4:options}]}${5:{${6:language}}}\n            $0	\n    \\end{mintlinebox}\n\\endgroup" "mintlineboxbash" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/mintlinebash" nil nil)
                       ("mlbox" "\\begin{mintlinebox}${1:<${2:minted options}>}${3:[${4:options}]}${5:{${6:language}}}\n	$0	\n\\end{mintlinebox}" "mintlinebox" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/mintline" nil nil)
                       ("min" "\\\\mintinline{${1:language}}{$2}$0\n" "mintinline" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/mintinline" nil nil)
                       ("minipage" "\\begin{minipage}{${2:0.48}\\textwidth}\n\n\\end{minipage}\\hfil\n\\begin{minipage}[${3:t}]{${4:0.48}\\textwidth}\n   $0\n\\end{minipage}" "minipage" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/minipage" nil nil)
                       ("mbox" "\\begin{methodbox}${1:[${2:Options}]}${3:{${4:Title}}}\n	$0	\n\\end{methodbox}" "methodbox" nil
                        ("box")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/methodbox" nil nil)
                       ("mc" "\\mc[${1:1}]{$2}$0" "mc" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/mc" nil nil)
                       ("lrb" "\\left($0\\right)" "lrb" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/lrb" nil nil)
                       ("lispin" "\\lispinline{$1}$0" "lispinline" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/lispinline" nil nil)
                       ("lemma" "\\begin{lemmabox}\\nospacing\n    \\begin{lemma}${1:[${2:title}]}${3:\\label{lemma:${2:$(create-label-for-theorem yas-text)}}}\n        $0\n    \\end{lemma}\n\\end{lemmabox}\n" "lemma" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/lemma" nil nil)
                       ("lvm" "\\leavevmode\\\\\\\\$0" "leavemode" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/leavevmode" nil nil)
                       ("lcb" "\\left\\\\{$0\\right\\\\}" "lcb" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/lcb" nil nil)
                       ("lawb" "\\begin{lawbox}\\nospacing\n   $0\n\\end{lawbox}" "lawbox" nil
                        ("box")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/lawbox" nil nil)
                       ("law" "\\begin{lawbox}\\nospacing\n    \\begin{law}${1:[${2:title}]}${3:\\label{law:${2:$(downcase(\n            replace-regexp-in-string \"$\"  \"\"\n            (\n                 replace-regexp-in-string \"[[:space:]]\" \"_\"\n                 (\n                    replace-regexp-in-string \"\\\\\\\\([\\\\\\\\]\\\\\\\\([^ ]*\\\\\\\\|[^\\\\\\\\]\\\\\\\\)\\\\\\\\|[\\\\\\\\$][^\\\\\\\\$]*[\\\\\\\\$]\\\\\\\\)\" \"\" yas-text nil t\n                 )\n            )\n    )\n\n    )}}}\n        $0\n    \\end{law}\n\\end{lawbox}" "law" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/law" nil nil)
                       ("latexin" "\\latexinline{$1}$0" "latexinline" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/latexinline" nil nil)
                       ("lab" "\\left[$0\\right]" "lab" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/lab" nil nil)
                       ("javain" "\\javainline/$1/$0" "javainline" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/javainline" nil nil)
                       ("javacode" "\\begin{figure}[H]\n\\centering\n\\begin{javacode}\n$0\n\\end{javacode}\n${1:\\label{fig:$2}}\n${3:\\caption{$4}}\n\\end{figure}" "javacode" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/javacode" nil nil)
                       ("java" "\\begin{mintlinebox}{java}\n  $0\n\\end{mintlinebox}" "java" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/java" nil nil)
                       ("itemn" "\\begin{itemizenosep}\n\\item $0\n\\end{itemizenosep}" "itemizenosep" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/itemizenosep" nil nil)
                       ("item" "\\begin{itemize}\n\\item $0\n\\end{itemize}" "itemize" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/itemize" nil nil)
                       ("int" "\\int_{${1:0}}^{${2:\\infty}}$0" "int" nil
                        ("Integration")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/int" nil nil)
                       ("input" "\\input{$1}$0" "input" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/input" nil nil)
                       ("includetikzstandalone" "\\centering{\n    \\resizebox{\\linewidth}{!}{\\input{`(file-relative-name (projectile-project-root))`$0.tex}}\n}" "includetikzstandalone" nil
                        ("tikz")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/includetikzstandalone" nil nil)
                       ("imps" "\\imps{$1}$0" "imps" nil
                        ("text")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/imps" nil nil)
                       ("imp" "\\imp{$1}$0" "imp" nil
                        ("text")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/imp" nil nil)
                       ("ifnum" "\\ifnum${1:\\x}=${2:4}\n    $0\n\\else\n\n\\fi" "ifnum" nil
                        ("tikz")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/ifnum" nil nil)
                       ("function" "\\begin{functionbox}\\nospacing\n    \\begin{function}${1:[${2:title}]}${3:\\label{function:${2:$(create-label-for-theorem yas-text)}}}\n        $0\n    \\end{function}\n\\end{functionbox}" "function" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/function" nil nil)
                       ("frame" "\\begin{frame}${1:{${2:Title}}}\n    $0\n\\end{frame}" "frame" nil
                        ("beamer")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/frame" nil nil)
                       ("frac" "\\frac{$1}{$2}$0" "frac" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/frac" nil nil)
                       ("formula" "\\begin{formulabox}\\nospacing\n    \\begin{formula}${1:[${2:title}]}${3:\\label{formula:${2:$(create-label-for-theorem yas-text)}}}\n        $0\n    \\end{formula}\n\\end{formulabox}" "formula" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/formula" nil nil)
                       ("foreachpos" "\\foreach \\${1:pos} in ${2:{(0,1),(0,2),(0,3)}}{\n    $0\n}" "" nil
                        ("tikz")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/foreachpos" nil nil)
                       ("tforeach" "\\foreach \\\\${1:i}${2: [count=\\idx$1 ${3:from ${4:4}}]} in {${5:1,4,...,10 or a,...,e}}\n{\n    $0\n}\n" "foreach" nil
                        ("tikz")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/foreach" nil nil)
                       ("flalings" "\\begin{flalign*}\n  $1\n\\end{flalign*}$0" "flalings" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/flalings" nil nil)
                       ("flaligns" "\\begin{flalign*}\n  $1\n\\end{flalign*}$0" "flaligns" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/flaligns" nil nil)
                       ("flalign" "\\begin{flalign}\n  $0\n\\end{flalign}" "flalign" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/flalign" nil nil)
                       ("figs" "\\begin{figure}${1:[${2:Placement specifier\n    h: Place the float here, i.e., approximately at the same point it occurs in the source text (however, not exactly at the spot)\n    t: Position at the top of the page. \n    b: Position at the bottom of the page. \n    p: Put on a special page for floats only.\n    !: Override internal parameters LaTeX uses for determining \"good\" float positions.\n    H: Places the float at precisely the location in the LaTeX code. Requires the float package ~ !h}]}\n    \\centering\n    \\begin{subfigure}[${3:b}]${4:{${5:0.49}\\columnwidth}}\n        \\includegraphics[${6:width=\\textwidth}]{figures/$7.png}\n        ${8:\\caption{${9:text}}}\n        ${10:\\label{${11:text}}}\n    \\end{subfigure}\n    \\hfil\n    \\begin{subfigure}[${12:b}]{${13:0.49}\\columnwidth}\n        \\includegraphics[${14:width=\\textwidth}]{figures/$15.png}\n        ${16:\\caption{${17:text}}}\n        ${18:\\label{${19:text}}}\n    \\end{subfigure}\n\\end{figure}\n" "figures" nil
                        ("figures")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/figures" nil nil)
                       ("fig" "\\begin{figure}[${1:H}]\n    \\centering\n    \\includegraphics[width=${2:1.0}\\textwidth]{figures/$3.png}\n    \\caption{$4}\n    \\label{fig:$5}\n\\end{figure}\n$0" "figure" nil
                        ("figures")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/figure" nil nil)
                       ("explaination" "\\begin{explanationbox}\\nospacing\n    \\begin{explanation}${1:[${2:title}]}${3:\\label{explanation:${2:$(downcase(replace-regexp-in-string \"[[:space:]]\" \"_\" yas-text))}}}\n        $0\n    \\end{explanation}\n\\end{explanationbox}" "explaination" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/explanation" nil nil)
                       ("exampleb" "\\begin{examplebox}\\nospacing\n   $0\n\\end{examplebox}" "exampleb" nil
                        ("box")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/exampleb" nil nil)
                       ("example" "\\begin{examplebox}\\nospacing\n    \\begin{example}${1:[${2:title}]}${3:\\label{example:${2:$(downcase(replace-regexp-in-string \"[[:space:]]\" \"_\" yas-text))}}}\n        $0\n    \\end{example}\n\\end{examplebox}" "example" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/example" nil nil)
                       ("eq" "\\begin{equation}\n	$1	\n\\end{equation}$0" "equation" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/eq" nil nil)
                       ("enumn" "\\begin{enumeratenosep}\n\\item $0\n\\end{enumeratenosep}" "enumeratenosep" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/enumeratenosep" nil nil)
                       ("empheq" "\\begin{empheq}[${1:box=\\fbox}]{${2:align}}\n		$0\n\\end{empheq}" "empheq" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/empheq" nil nil)
                       ("emphb" "\\begin{emphbox}\\nospacing\n   $0\n\\end{emphbox}\n" "emphbox" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/emphbox" nil nil)
                       ("dv2" "\\dv[${1:2}]{${2:numerator}}{${3:denominator}}$0" "dv2" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/dv2" nil nil)
                       ("dv" "\\dv{${1:numerator}}{${2:denominator}}$0" "dv" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/dv" nil nil)
                       ("dfrac" "\\dfrac{${1:numerator}}{${2:denominator}}$0" "dfrac" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/dfrac" nil nil)
                       ("desc" "\\begin{descriptionbox}\n    \\begin{description}${1:[${2:title}]}${3:\\label{description:${2:$(downcase(replace-regexp-in-string \"[[:space:]]\" \"_\" yas-text))}}}\n        $0\n    \\end{description}\n\\end{descriptionbox}" "description" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/description" nil nil)
                       ("defnc" "\\begin{defncbox}\n    \\begin{defnc}${1:[${2:title}]}${3:\\label{defnc:${2:$(downcase(replace-regexp-in-string \"[[:space:]]\" \"_\" yas-text))}}}\n        $0\n    \\end{defnc}\n\\end{defncbox}" "defnc" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/defnc" nil nil)
                       ("defn" "\\begin{defnbox}\\nospacing\n    \\begin{defn}${1:[${2:title}]}${3:\\label{defn:${2:$(create-label-for-theorem yas-text)}}}\n        $0\n    \\end{defn}\n\\end{defnbox}\n" "defn" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/defn" nil nil)
                       ("defnb" "\\begin{defnbox}\\nospacing\n   $0\n\\end{defnbox}" "defnb" nil
                        ("box")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/defb" nil nil)
                       ("cudain" "\\cudainline{$1}$0" "cudainline" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/cudainline" nil nil)
                       ("cppin" "\\cppinline{$1}$0" "cppinline" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/cppinline" nil nil)
                       ("corb" "\\begin{corbox}\\nospacing\n	$1	\n\\end{corbox}$0" "corollarybox" nil
                        ("box")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/corollarybox" nil nil)
                       ("cor" "\\begin{corbox}\\nospacing\n  \\begin{cor}${1:[${2:title}]}${3:\\label{cor:${2:$(downcase(replace-regexp-in-string \"[[:space:]]\" \"_\" yas-text))}}}\n	$4 \n  \\end{cor}\n\\end{corbox}$0" "corollary" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/corollary" nil nil)
                       ("conslist" "\\begin{conslist}\n\\item $0\n\\end{conslist}" "conslist" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/conslist" nil nil)
                       ("probc" "\\probc{${1:x}}{${2:y}}$0" "conditionalprobability" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/conditionalprobability" nil nil)
                       ("mcomment" "% ------------------------------------------------------------------------------\n% ${1:Title}\n% ------------------------------------------------------------------------------\n$0" "mcomment" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/comment" nil nil)
                       ("codeboxlisting" "\\begin{codeboxlisting}${1:<${2:minted options}>}${3:[${4:options}]}${5:{${6:language}}}${7:{${8:Title}}}\n	$0	\n\\end{codeboxlisting}" "codeboxlisting" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/codeboxlisting" nil nil)
                       ("cboxf" "\\begin{figure}[H]\n\\centering\n\\begin{minted}[frame=lines, breaklines=true, linenos=true, fontsize=\\scriptsize, escapeinside=||]{${1:language}}\n$0\n\\end{minted}\n${2:\\caption{$3}}\n\\end{figure}" "codeboxfigure" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/codeboxfigure" nil nil)
                       ("cboxc" "\\begin{codeboxcomment}${1:[${2:Title}]}${3:{${4:width}}}{${5:language}}{${6:\n		comment}\n}\n	$0\n\\end{codeboxcomment}" "codeboxcomment" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/codeboxcomment" nil nil)
                       ("cboxn" "\\begin{codeboxNl}${1:[${2:Title}]}{${3:language}}\n	$0	\n\\end{codeboxNl}" "codeboxNl" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/codeboxNL" nil nil)
                       ("cboxi" "\\codeboxinput${1:[${2:Title}]}${3:[${4:Options}]}{${5:language}}{figures/${6:filename}}$0" "codeboxInput" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/codeboxInput" nil nil)
                       ("cbox" "\\begin{codebox}${1:{${2:Title}}}\\nospacing\n    \\begin{plaincodebox}${3:<${4:minted options}>}${5:[${6:options}]}${7:{${8:language}}}\n        $0\n    \\end{plaincodebox}\n\\end{codebox}" "codebox" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/codebox" nil nil)
                       ("clf" "\\classifier$0" "classifier" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/classifier" nil nil)
                       ("clistnosep" "\\begin{circlelistnosep}\n	\\item $0\n\\end{circlelistnosep}" "circlelistnosep" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/circlelistnosep" nil nil)
                       ("clist" "\\begin{circlelist}\n	\\item $1\n\\end{circlelist}$0\n" "circlelist" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/circlelist" nil nil)
                       ("brb" "\\big($0\\big)" "brb" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/brb" nil nil)
                       ("left" "\\left$1$0\\right$1" "brackets" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/brackets" nil nil)
                       ("bmlbox" "\\begingroup\n\\catcode`\\!=\\active\n\\def!#1!{\\optc{#1}}\n\\begin{mintlinebox}{bash}\n   ${0:|!something colored!|}\n\\end{mintlinebox} \n\\endgroup" "bmintinline" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/bmintinline" nil nil)
                       ("bitem" "\\item<$1>$2\n\\note[item]<$1>{$3}\n$0" "bitem" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/bitem" nil nil)
                       ("tbegin" "\\begin{tikzpicture}[${1:every node/.style={thick}}${2:,scale=${3:0.9}, every node/.style={scale=${3:0.9}}]\n	$0															\n\\end{tikzpicture}\n" "tbegin" nil
                        ("tikz")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/begintikz" nil nil)
                       ("begin" "\\begin{$1}\n    $0\n\\end{$1}" "begin" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/begin" nil nil)
                       ("bcomment" "% ==============================================================================\n% ${1:Title}\n% ==============================================================================\n$0" "bcomment" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/bcomment" nil nil)
                       ("bashin" "\\bashinline{$1}$0" "bashinline" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/bashinline" nil nil)
                       ("atrbox" "\\begin{attributebox}${1:[${2:Options}]}${3:{${4:Title}}}\n	$0	\n\\end{attributebox}\n" "attributebox" nil
                        ("box")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/attributebox" nil nil)
                       ("attentionb" "\\begin{attentionbox}${1:{${2:title}}}\\nospacing\n$0\n\\end{attentionbox}\n" "attentionbox" nil
                        ("theorem")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/attentionbox" nil nil)
                       ("alphalistnosep" "\\begin{alphalistnosep}\n\\item $1\n\\end{alphalistnosep}$0\n" "alphalistnosep" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/alphalistnosep" nil nil)
                       ("alphalist" "\\begin{alphalist}\n\\item $1\n\\end{alphalist}$0" "alphalist" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/alphalist" nil nil)
                       ("aligns" "\\begin{align*}\n  $1\n\\end{align*}$0" "aligns" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/aligns" nil nil)
                       ("aligned" "\\begin{aligned$1}\n    $0\n\\end{aligned}\n" "aligned" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/aligned" nil nil)
                       ("alignats" "\\begin{alignat*}{$1}\n   $2\n\\end{alignat*}$0" "alignats" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/alignats" nil nil)
                       ("align" "\\begin{align$1}\n    $0\n\\end{align}" "align" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/align" nil nil)
                       ("algorithm" "\\begin{algorithmbox}\\nospacing\n  \\begin{algo}[${1:Title}]\\leavevmode\n    \\begin{algorithmic}[1]\n      ${2:\\item[] \\imp{Given}:}\n        ${3:\\For{$t=1,\\ldots,T$}}\n        \\State\n        ${3:\\EndFor}\n    \\end{algorithmic}\n  \\end{algo}\n\\end{algorithmbox}" "algorithm" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/algorithm" nil nil)
                       ("inprd" "\\inprd{$1}{$2}$0" "\\inprd" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/\\inprd" nil nil)
                       ("\\[" "\\[$1\\]$0" "\\[" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/\\[" nil nil)
                       ("rin" "\\Rinline{$1}$0" "Rinline" nil
                        ("coding")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/Rinline" nil nil)
                       ("inkfigs" "\\begin{figure}[H]\n	\\centering\n	\\begin{subfigure}{${1:.45}\\columnwidth}\n		\\centering{\n			\\def\\svgwidth{${8:100pt}}\n			\\resizebox{${3:\\linewidth}}{!}{\\input{${2:figures/}$3${4:.pdf_tex}}}\n		}\n		\\vspace{-1.5em}\n		\\caption{$9}\n		${10:\\label{fig:$11}}\n	\\end{subfigure}%\n	\\hfil\n	\\begin{subfigure}{${1:.45}\\columnwidth}\n		\\centering{\n			\\def\\svgwidth{${2:100pt}}\n			\\resizebox{${8:\\linewidth}}{!}{\\input{${5:figures/}$6${7:.pdf_tex}}}\n		}\n		\\vspace{-1.5em}\n		\\caption{$12}\n		${13:\\label{fig:$14}}\n	\\end{subfigure}\n\\end{figure}$0" "Inkscape Figures" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/Inkscape Figures" nil nil)
                       ("inkfig" "\\begin{figure}[H]	\n\\centering{\n	\\def\\svgwidth{${1:100pt}}\n	\\resizebox{${2:0.6\\linewidth}}{!}{\\input{${3:figures/}$4${5:.pdf_tex}}}\n}\n\\end{figure}$0" "Inkscape Figure" nil
                        ("figure")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/Inkscape Figure" nil nil)
                       ("cref" "\\cref{${1:label$(unless yas/modified-p (reftex-reference nil 'dont-insert))}}$0" "cleveref \\cref" nil nil nil "/home/pollakg/.doom.d/snippets/latex-mode/Cref" nil nil)
                       ("$" "$$1$$0" "$" nil
                        ("math")
                        nil "/home/pollakg/.doom.d/snippets/latex-mode/$" nil nil)))


;;; Do not edit! File generated at Tue May 17 09:43:05 2022
