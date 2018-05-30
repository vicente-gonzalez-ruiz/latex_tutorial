%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% No me edites si mi extensión no es .m4! %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\title{\href{http://www.latex-project.org}{\LaTeX}}

\maketitle
\tableofcontents
\lstset{language=TeX}

\chapter{Introduction}
%{{{

\section{What is \href{http://en.wikibooks.org/wiki/TeX}{\TeX}?}
%{{{

\begin{itemize}
\item A computer program for typesetting documents created by
  \href{http://en.wikipedia.org/wiki/Donald_Knuth}{Donald Knuth}.
\item The {\TeX} interpreter inputs a
  \href{http://en.wikipedia.org/wiki/Markup_language}{markup
    language}.
\end{itemize}

%}}}

\section{What is \href{http://en.wikibooks.org/wiki/LaTeX}{\LaTeX}?}
%{{{

\begin{itemize}
\item {\LaTeX} is a collection of macros written in {\TeX} by
  \href{http://en.wikipedia.org/wiki/Leslie_Lamport}{Leslie
    B. Lamport} that usually minimize the number of commands to write a new
  document.
\end{itemize}

%}}}

\section{\LaTeX alternatives}
%{{{

\begin{enumerate}
\item
  \href{http://en.wikipedia.org/wiki/XeTeX}{\texttt{XeTeX/XeLaTeX}}: a
  \TeX/\LaTeX branch specifically designed to support non-English
  languages.
\item
  \href{http://en.wikipedia.org/wiki/LuaTeX}{\texttt{LuaTeX/LuaLaTeX}}:
  adds \href{http://www.lua.org}{Lua} support to the \TeX/\LaTeX
  engines, with the objective of incrementing the posibilities of the
  typesetting system. For example, in \texttt{LuaTeX} we can write:
\begin{verbatim}
$\pi = \directlua{tex.print(math.pi)}$
                  <--------------->
                        LUA code
\end{verbatim}
  to get the value of $\pi$.
\end{enumerate}

%}}}

\section{Installation}
%{{{

\begin{enumerate}
\item On BSD and GNU/Linux, install
  \href{http://www.tug.org/texlive/}{Tex Live}:
\begin{verbatim}
# Debian and derivatives:
sudo apt-get install texlive

# Arch Linux:
sudo pacman -S textlive-most
\end{verbatim}
\item On Mac OS X, install:
  \begin{enumerate}
  \item \href{http://tug.org/mactex/}{MacTex}: Download and install the package.
  \item Tex Live using MacPorts or Fink:
\begin{verbatim}
# MacPorts:
sudo port install texlive

# Fink:
fink install texlive
\end{verbatim}
  \end{enumerate}
\item In Microsoft Windows, install:
  \begin{enumerate}
  \item \href{http://miktex.org}{MiKTeX}: Download and install the package.
    \item
    \href{https://www.tug.org/texlive/acquire-netinstall.html}{Tex
      Live}: Download and install the package.
  \end{enumerate}
\end{enumerate}

%}}}

\section{A very basic test of \TeX}
%{{{

\begin{verbatim}
  # Run:
  tex '\empty Hello World!\bye'
  # To get a file: "texput.dvi" that can be displayed with "xdvi".
\end{verbatim}

%}}}

\section{An editor: Emacs + AUCTeX}
%{{{

\begin{itemize}
\item Provides auto-completion, spell-checking, a complete set of
  keyboard shortcuts, table of contents view, document preview and
  many other features.
\end{itemize}
\begin{verbatim}
# Debians:
sudo apt-get install auctex

# Arch:
sudo pacman -S auctex
\end{verbatim}

%}}}

\section{Basic data flow}
%{{{

\begin{verbatim}
  .tex + .eps
       |
+------+
|      v
|  +-------+
|  | latex |
|  +-------+
|      |.aux
| +----+  
| |    | |.bib
| |    v v
| | +--------+
| | | bibtex |
| | +--------+
| +---+ |
+---+ | |.bbl
    | | +---------+
    | +-|-------+ |
    +-|-|-----+ | |
    | | |     | | |
    v v v     v v v
 +---------+ +-------+
 | htlatex | | latex | 
 +---------+ +-------+
      |.html     |.dvi
      v    +-----+-----+
           |           |
           v           v
       +--------+  +-------+
       | dvipdf |  | dvips |
       +--------+  +-------+
           |.pdf       |.ps
           v           v
\end{verbatim}

%}}}

\section{Basic syntax}
%{{{

\lstinputlisting{basic_syntax.tex}

%}}}

%}}}

\chapter{Structures}
%{{{

\section{Minimal}
%{{{

\lstinputlisting{minimal.tex}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{minimal}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="minimal.svg" border="5"/>
  </div>
}
\fi

%}}}

\section{Letter}
%{{{

\lstinputlisting{letter.tex}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{letter}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="letter.svg" border="5"/>
  </div>
}
\fi

%}}}

\section{Article}
%{{{

\lstinputlisting{article.tex}
\lstinputlisting{sin.gpt}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{article}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="article.svg" border="5"/>
  </div>
}
\fi

%}}}

\section{Report/Book}
%{{{

\lstinputlisting{report.tex}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{report1}
  \includegraphics[width=8cm]{report2}
  \includegraphics[width=8cm]{report3}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="report1.svg" border="5"/>
    <img width="800" src="report2.svg" border="5"/>
    <img width="800" src="report3.svg" border="5"/>
  </div>
}
\fi

%}}}

\section{Slides}
%{{{

\lstinputlisting{slides.tex}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{slides1}
  \includegraphics[width=8cm]{slides2}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="slides1.svg" border="5"/>
    <img width="800" src="slides2.svg" border="5"/>
  </div>
}
\fi

%}}}

%}}}

% http://tex.loria.fr/ctan-doc/macros/latex/doc/html/usrguide/node29.html
\chapter{\href{http://en.wikibooks.org/wiki/LaTeX/Internationalization}{Encodings (Internationalization)}}
%{{{

\section{\href{http://en.wikibooks.org/wiki/LaTeX/Special_Characters}{(Input) Source Encoding}}
%{{{

\begin{itemize}
\item Allows to inputs characters other than A-Za-z0-9 and English
  punctuation marks (for example, the character ``\'a''). Notice that
  your source document must use an appropiate encoding system (such as
  UTF-8).
\end{itemize}
\begin{verbatim}
\usepackage[utf8]{inputenc} % Enought for most latin languages.
\end{verbatim}

%}}}

\section{\href{http://en.wikibooks.org/wiki/LaTeX/Fonts}{(Output) Document Encoding}}
%{{{

\begin{itemize}
\item The default LaTeX font encoding is OT1, the encoding of the
  original Computer Modern TeX text fonts. It contains only 128
  \href{http://en.wikipedia.org/wiki/Glyph}{glyphs}. For example,
  using OT1, letters with accents such as the ``\'a'' are generated by
  two glyphs: the letter itself and the character ``\'~'', which
  produce that it is imposible to find the ``\'a'' in our compiled
  document because this character, in fact, does not exist!
\item T1 encoding allows up to 256 glyphs and it is essential for
  compiling non-English documents.
\end{itemize}
\begin{verbatim}
\usepackage[T1]{fontenc} % Necessary, for example, for creating Spanish documents.
\end{verbatim}

%}}}

\section{\href{http://en.wikibooks.org/wiki/LaTeX/Internationalization}{Hyphenation and Specific Language Rules}}
%{{{

\begin{verbatim}
% We specify on Spanish in this example!
\usepackage[spanish]{babel} % Extra info at: "http://www.ctan.org/pkg/babel".
\end{verbatim}

%}}}

%}}}

\chapter{Commenting the Source Code}
%{{{

\lstinputlisting{comments}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{comments}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="comments.svg" border="5"/>
  </div>
}
\fi

%}}}

\chapter{Tables}
%{{{

\lstinputlisting{table}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{table}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="table.svg" border="5"/>
  </div>
}
\fi

%}}}

\chapter{List of Items}
%{{{

\section{The \texttt{itemize} environment}
%{{{

\lstinputlisting{itemize}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{itemize}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="itemize.svg" border="5"/>
  </div>
}
\fi

%}}}

\section{The \texttt{enumerate} environment}
%{{{

\lstinputlisting{enumerate}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{enumerate}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="enumerate.svg" border="5"/>
  </div>
}
\fi

%}}}

\section{The \texttt{description} environment}
%{{{

\lstinputlisting{description}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{description}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="description.svg" border="5"/>
  </div>
}
\fi

%}}}


%}}}

\chapter{Formating}
%{{{

\section{Sizing}
%{{{

\lstinputlisting{size}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{size}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="size.svg" border="5"/>
  </div>
}
\fi

\lstinputlisting{size_class_10}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{size_class_10}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="size_class_10.svg" border="5"/>
  </div>
}
\fi

\lstinputlisting{size_class_12}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{size_class_12}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="size_class_12.svg" border="5"/>
  </div>
}
\fi

\lstinputlisting{size_fontsize}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{size_fontsize}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="size_fontsize.svg" border="5"/>
  </div>
}
\fi


%}}}

\section{Moving Horizontally}
%{{{

\lstinputlisting{centering}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{centering}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="centering.svg" border="5"/>
  </div>
}
\fi

%}}}

\section{The \texttt{verbatim} Environment}
%{{{

\lstinputlisting{verbatim}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{verbatim}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="verbatim.svg" border="5"/>
  </div>
}
\fi

%}}}

%}}}

\chapter{\href{http://www.tug.dk/FontCatalogue/}{Fonts}}
%{{{

\begin{itemize}
\item The font defines the aspect of the glyphs.
\item The most common fonts in {\LaTeX} are:
\begin{tabular}{rl}
  Font         & Name \\
  \hline
  pag          & Avant Garde \\
  fvs          & Bitstream Vera Sans \\
  pbk          & Bookman \\
  bch          & Charter \\
  ccr          & Computer Concrete \\
  cmr          & Computer Modern \\
  pcr          & Courier \\
  mdugm        & Garamond \\
  phv          & Helvetica \\
  fi4          & Inconsolata \\
  lmr          & Latin Modern \\
  LinuxBiolinumT-OsF & Linux Biolinum (formerly 'fxb' in older package versions) \\
  LinuxLibertineT-OsF & Linux Libertine (formerly 'fxl' in older package versions) \\
  pnc         & New Century Schoolbook \\
  ppl          & Palatino \\
  ptm          & Times \\
  uncl         & Uncial \\
  put          & Utopia \\
  pzc          & Zapf Chancery
\end{tabular}
\item The default font for LaTeX is
  \href{http://www.tug.dk/FontCatalogue/cmr}{Computer Modern}.
\item In {\LaTeX}, each font has three families (also named styles)
  which are: (1) roman (\verb|\textnormal{...}| or
  \verb|\textnormal{...}|), (2) serif (\verb|\textsf{...}|) and (3)
  monospace or teletype (\verb|\texttt{...}|).
\end{itemize}

\lstinputlisting{testing_families.tex}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{testing_families}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="testing_families.svg" border="5"/>
  </div>
}
\fi

\section{Series}
%{{{
\begin{itemize}
\item Controls the thickness of the font.
\end{itemize}

\lstinputlisting{series.tex}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{series}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="series.svg" border="5"/>
  </div>
}
\fi

%}}}

\section{Shape}
%{{{
\begin{itemize}
\item Controls shape of the font.
\end{itemize}

\lstinputlisting{shapes.tex}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{shapes}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="shapes.svg" border="5"/>
  </div>
}
\fi

%}}}

\section{Changing the Font for the Entire Document}
%{{{

\lstinputlisting{cmbright.tex}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{cmbright}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="cmbright.svg" border="5"/>
  </div>
}
\fi

%}}}

\section{Changing the Font for a Part of the Document}
%{{{

\lstinputlisting{cmbright-part.tex}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{cmbright-part}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="cmbright-part.svg" border="5"/>
  </div>
}
\fi

%}}}

% http://tex.loria.fr/ctan-doc/macros/latex/doc/html/usrguide/node24.html

%}}}

\chapter{Mathematics}
%{{{

\lstinputlisting{math}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{math}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="math.svg" border="5"/>
  </div>
}
\fi

%}}}

\chapter{Creating Macros}
%{{{

\section{(Re)Defining a new command}
%{{{

\lstinputlisting{site}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{site}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="site.svg" border="5"/>
  </div>
}
\fi

%}}}

\section{(Re)Defining a new environment}
%{{{

\lstinputlisting{problem}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{problem}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="problem.svg" border="5"/>
  </div>
}
\fi

%}}}

%}}}

\chapter{Drawing}
%{{{

% http://tex.loria.fr/ctan-doc/macros/latex/doc/html/usrguide/node31.html
\section{The \texttt{picture} environment}
%{{{

\lstinputlisting{picture}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{picture}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="picture.svg" border="5"/>
  </div>
}
\fi

%}}}

\section{Inserting (vectorial) drawings}
%{{{

\begin{itemize}
\item For using \texttt{pdflatex} (with \texttt{latex} is also
  possible but you must create \texttt{.eps} files instead of
  \texttt{.pdf} files for the figures).
\item Steps:
\begin{enumerate}
\item Create a \texttt{.fig} figure using \href{http://www.xfig.org}{Xfig}.
\item Convert it to a \texttt{.pdf} file with:

\lstinputlisting{convert_fig.sh}

\item Include in the document the figure with:

\begin{verbatim}
\includegraphics[width=200pt]{figure}
\end{verbatim}
\end{enumerate}
\end{itemize}

\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{include_fig}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="include_fig.svg" border="5"/>
  </div>
}
\fi


%}}}

%}}}

\chapter{Arithmetic}
%{{{

\lstinputlisting{arithmetic}
\ifx \HCode\Undfef
\begin{center}
  \includegraphics[width=8cm]{arithmetic}
\end{center}
\else
\HCode{
  <div style="text-align:center;">
    <img width="800" src="arithmetic.svg" border="5"/>
  </div>
}
\fi

%}}}

\chapter{Producing HTML5 Documents}

%\section{Web Pages}
\begin{enumerate}
\item Write your document in {\LaTeX} using any standard document
  class package (for example, \texttt{article} works great).
\item Create your raster images in PNG or JPEG format and your
  vectorial figures in SVG. In order to have both the \texttt{.pdf}
  and the \texttt{.html} version of your document, include them in the
  text with:
  %
  \lstinputlisting{html_or_pdf} %
  %
  where \texttt{your-figure} is the filename of your figure without
  the extension, and \texttt{extension} is \texttt{.png},
  \texttt{.jpg} or \texttt{.svg}, accordingly. All these figures must
  be in the same directory that the {\LaTeX} source.
\item Create the \texttt{.pdf} version of your document by running:
  %
  \lstinputlisting{create_pdf.sh}
\item Create the \texttt{.html} version of your document by running:
  %
  \lstinputlisting{create_html.sh}
\end{enumerate}
An example is available at
\url{https://github.com/vicente-gonzalez-ruiz/LaTeX-to-HTML5-example}.

