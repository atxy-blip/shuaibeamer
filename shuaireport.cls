\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{shuaibeamer}[2023/11/28 0.1.1 Beamer Template for Weekly Reports at Shuai Group]

\PassOptionsToClass{
  10pt,
  handout,
  fontset=none,
  aspectratio=169
}{ctexbeamer}

\LoadClass{ctexbeamer}

\usetheme{metropolis}
\usefonttheme{serif,professionalfonts}
\usepackage{appendixnumberbeamer}

\RequirePackage{
  booktabs,
  caption,
  % chemfig,
  % footmisc,
  fontawesome5,
  graphicx,
  listings,
  % siunitx,
  % subcaption,
  unicode-math,
  % witharrows,
  xeCJKfntef,
  xkcdcolors
}

\usepackage{
  shuaireport-symb,
  shuaireport-op
}

\RequirePackage[backend=biber, style=chem-acs]{biblatex}
\renewbibmacro*{author}{} % remove author field globally
\renewbibmacro*{editor}{}

\definecolor{thuviolet}{HTML}{660874}

% \setbeamercolor{background canvas}{bg=yellow!50!white}
\setbeamercolor{palette primary}{bg=thuviolet}
\setbeamercolor{normal text}{fg=black!90,bg=black!2}
\setbeamercolor{progress bar}{fg=thuviolet,bg=thuviolet!20}
% \setbeamercolor{frametitle}{bg=thuviolet}
\metroset{progressbar=none}
\setbeamerfont{title}{size=\Huge, series=\bfseries}
\setbeamerfont*{subtitle}{size=\Large, shape=\itshape}
\setbeamerfont{author}{size=\Large}
\setbeamerfont{date}{size=\Large}
\setbeamerfont{section title}{size=\Huge, series=\bfseries}
\setbeamerfont{frametitle}{size=\large, series=\bfseries}
\setbeamerfont{caption}{size=\footnotesize, series=\bfseries}

% \setbeamerfont{footnote}{size=\scriptsize}
\setbeamerfont{footnote}{size=\tiny}
% \setbeamercolor{footnote}{fg=red}

\setbeamerfont{alerted text}{series=\bfseries}

\setbeamercolor{title separator}{fg=thuviolet}
\setlength{\metropolis@titleseparator@linewidth}{1pt}

\setbeamertemplate{title}{
  \vspace*{1em}
  \centering%
  \linespread{1.0}%
  \inserttitle%
  \par%
  \vspace*{0.5em}
}
\setbeamertemplate{subtitle}{
  \centering%
  \insertsubtitle%
  \par%
  \vspace*{0.5em}
}

\setbeamertemplate{author}{
  \vspace*{1em}
  \centering%
  \zihao{4}
  \insertauthor%
  \par%
  \vspace*{0.25em}
}

\setbeamertemplate{date}{
  \centering%
  \insertdate%
  \par%
}

\setbeamertemplate{frametitle}{%
  \nointerlineskip%
  \begin{beamercolorbox}[%
      wd=\paperwidth,%
      sep=0pt,%
      leftskip=\metropolis@frametitle@padding,%
      rightskip=\metropolis@frametitle@padding,%
    ]{frametitle}%
  % \raisebox{-.9ex}{\includegraphics[height=3.5ex]{nju-emblem.pdf}}
  \nolinebreak%
  \metropolis@frametitlestrut@start%
  \quad
  \insertframetitle%
  \metropolis@frametitlestrut@end%
  % \hfill
  \end{beamercolorbox}%
}

% remove footnote rule
\def\footnoterule{}

% \usepackage{pgfplots}
% \usepgfplotslibrary{dateplot}

% Fonts
\setmainfont{LibertinusSerif}[
  Extension      = .otf,
  UprightFont    = *-Regular,
  BoldFont       = *-Bold,
  ItalicFont     = *-Italic,
  BoldItalicFont = *-BoldItalic,
  Scale          = 1.1]
\setsansfont{LexendDeca}
\setmonofont{Iosevka}[Scale=0.96]
\setmathfont{LibertinusMath-Regular.otf}
\setCJKmainfont{Source Han Serif SC}[
  UprightFont     = * SemiBold,
  BoldFont        = * Heavy,
  ItalicFont      = * SemiBold,
  BoldItalicFont  = * SemiBold,
  RawFeature      = +fwid]
\setCJKmonofont{Sarasa Mono SC}

% Colors
\colorlet{keyword}{xkcdTeal}
\colorlet{comment}{xkcdBlack!50}
\colorlet{texcs}{xkcdMagenta}
\colorlet{emph1}{xkcdPurple}
\colorlet{emph2}{xkcdCerulean}
\colorlet{inline}{xkcdBurgundy}
\colorlet{string}{xkcdWine}

% Code listings
\lstdefinestyle{style@python}{
  language     = python,
  basewidth    = 0.54em,
  keywordstyle = \bfseries\color{keyword},
  commentstyle = \itshape\color{comment},
  emphstyle    = [1]\itshape\color{emph1},
  emphstyle    = [2]\color{emph2},
  stringstyle  = \color{string}
}
\lstdefinestyle{style@shell}{
  language     = bash,
  alsoletter   = {-},
  basewidth    = 0.54em,
  keywordstyle = \bfseries\color{keyword},
  commentstyle = \itshape\color{comment},
  emphstyle    = [1]\itshape\color{emph1},
  emphstyle    = [2]\color{emph2}
}
\lstdefinestyle{style@inline}{
  basicstyle   = \ttfamily\color{inline},
  keepspaces   = true
}
\lstnewenvironment{pycode}[1][]{\lstset{
  style        = style@python,
  basicstyle   = \footnotesize\ttfamily,
  gobble       = 2,#1}}{}
\lstnewenvironment{shcode}[1][]{\lstset{
  style        = style@shell,
  basicstyle   = \footnotesize\ttfamily\color{inline},
  gobble       = 2,#1}}{}
% % \lstMakeShortInline[style=style@inline]|
\def\shellcmd{\lstinline[style=style@inline]}

\captionsetup[figure]{font=footnotesize}

% \setchemfig{
%   atom sep=14.4pt,
%   double bond sep=2.6pt,
%   bond style={line width=0.6pt},
%   cram width=2.0pt,
%   bond offset=1.6pt
% }
% \renewcommand*\printatom[1]{\small\ensuremath{\mathsf{#1}}}

\DeclareGraphicsExtensions{.jpg, .jpeg, .png, .pdf}

\ExplSyntaxOn
\cs_new:Npn \__nju_get_text_width:Nn #1#2
  {
    \hbox_set:Nn \l_tmpa_box {#2}
    \dim_set:Nn #1 { \box_wd:N \l_tmpa_box }
  }
\cs_new_protected:Npn \__nju_spread_box:nnn #1#2#3
  {
    \mode_leave_vertical:
    \hbox_to_wd:nn { #1 }
      {
        #2 \tl_map_inline:nn { #3 } { ##1 \hfil } \unskip
      }
  }
\NewDocumentCommand \spreadbox { O{\bfseries} m m }
  { \__nju_spread_box:nnn {#2} {#1} {#3} }
\ExplSyntaxOff

\newcommand\unfootnote[1]{%
  \begingroup
    \setbeamerfont*{bibliography entry author}{size=\beamer@thmfsize@footnote,series=\normalfont}
    \setbeamerfont*{bibliography entry title}{size=\beamer@thmfsize@footnote,series=\bfseries}
    \setbeamerfont*{bibliography entry location}{size=\beamer@thmfsize@footnote,series=\normalfont}
    \setbeamerfont*{bibliography entry note}{size=\beamer@thmfsize@footnote,series=\normalfont}
    \renewcommand\thefootnote{}\footnote{#1}%
    \addtocounter{footnote}{-1}%
  \endgroup
}

% https://tex.stackexchange.com/q/21598/
\def\mathcolor#1#{\@mathcolor{#1}}
\def\@mathcolor#1#2#3{%
  \protect\leavevmode
  \begingroup
    \color#1{#2}#3%
  \endgroup
}

\newcommand{\reno}{\textsc{Renormalizer}}

\newcommand{\link}[1]{\href{#1}{\textcolor{thuviolet}{\faLink}}}

% \renewcommand{\emph}[1]{\begingroup\bfseries\itshape#1\endgroup}

\newcommand{\vemph}[1]{\textcolor{thuviolet}{\bfseries#1}}
\newcommand{\zhparen}[1]{\textcolor{gray}{（#1）}}

\hypersetup{
  pdfauthor = {yuxiong}
}

\newcommand{\lastpage}[1]{
  \setbeamertemplate{frame numbering}[none]
  \begin{frame}[standout]{#1}
    \vspace*{.6cm}
    \Huge
    % \hphantom{！}
    欢迎指正！

    \vspace*{0.2cm}
    \Large
    \href{https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode.zh-Hans}{
      \faCreativeCommons\,\faCreativeCommonsBy\,\faCreativeCommonsNc\,\faCreativeCommonsSa}
  \end{frame}
}
