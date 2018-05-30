fig2dev -L pdftex figure.fig > figure_.pdf
fig2dev -L pdftex_t -p figure_.pdf figure.fig > figure_.tex
pdflatex -jobname figure << EOF
\documentclass{minimal}
\usepackage{graphicx}
\usepackage{color}
\begin{document}
\resizebox{\textwidth}{!}{\input{figure_}}
\end{document}
EOF
pdfcrop figure.pdf /tmp/figure.pdf
mv /tmp/figure.pdf .
