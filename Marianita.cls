%% Preliminary declarations %%
\ProvidesClass{Marianita}[2021/07/16 V1 by Amado Cabrera & Mariana Pérez]
\NeedsTeXFormat{LaTeX2e}

%% Options %%
\LoadClass{article}

%% Packages %%
\RequirePackage[lmargin=45mm,rmargin=45mm]{geometry}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage[geometry]{ifsym}
\RequirePackage[spanish]{babel}
\RequirePackage{multicol}
\RequirePackage{graphicx}
\RequirePackage{fontspec}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{siunitx}
\RequirePackage{adforn}
\RequirePackage{dsfont}
\RequirePackage{tikz}
\usetikzlibrary{calc}

%% More options %%
\decimalpoint
\setlength{\parindent}{0pt}

%% My font %%
\newfontfamily\cali{QTMerryScript}

%% My colors %%
\definecolor{sky}{HTML}{6D90F5}
\definecolor{silvblue}{HTML}{6F6F6F}
\definecolor{babeblue}{HTML}{D6D6D6}

%% Personal commands %%
% Maketitle commands
\newcommand{\id}[1]{\def\@id{#1}}
\newcommand{\course}[1]{\def\@course{#1}}
\renewcommand{\maketitle}{
\begin{center}
\textbf{\@author}\hfill \@date\\
\textbf{\@id}\hfill\null\\[2em]
{\color{babeblue}\rule{\textwidth}{0.6mm}\\[-1em] \fcolorbox{white}{white}{\fontfamily{bch}\selectfont\color{silvblue}{\@course}}}
\color{sky}\rule{\textwidth}{0.15mm}\\[0.5em]
{\cali \color{sky} \Huge \@title}\\[-0.5em]
\color{sky}\rule{\textwidth}{0.15mm}
\end{center}
\vspace{1em}
}

% Sections commands
\titleformat*{\section}{\cali\huge}
\titleformat*{\subsection}{\cali\LARGE}
\titleformat*{\subsubsection}{\cali\Large}

% enumerate stuff
\newcommand{\enumI}[2]{\tikz[baseline=(char.base)]{
\node (char) at (0,0) [scale=#2]{#1};
\fill[sky,opacity=0.3] ($(char.south east)+(-1.1ex,-0.5ex)$) rectangle ($(char.north west)+(-0.1ex,-1.3ex)$);
}}
\newcommand{\enumII}[2]{\tikz[baseline=(char.base)]{
\node (char) at (0,0) [scale=#2]{#1};
\draw[silvblue,opacity=0.3,thick] ($(char.south east)+(-1.1ex,-0.5ex)$) rectangle ($(char.north west)+(-0.1ex,-1.3ex)$);
}}
\newcommand{\enumIII}[2]{\tikz[baseline=(char.base)]{
\node (char) at (0,0) [scale=#2]{#1};
\fill[sky,opacity=0.3,thick,rotate=45] ($(char.south)+(-1.1ex,0ex)$) rectangle ($(char.north)+(-1.1ex,0ex)$);
}}
\newcommand{\enumIV}[2]{\tikz[baseline=(char.base)]{
\node (char) at (0,0) [scale=#2]{#1};
\draw[silvblue,opacity=0.3,thick,rotate=45] ($(char.south)+(-1.1ex,0ex)$) rectangle ($(char.north)+(-1.1ex,0ex)$);
}}

%% enumerate and itemize options %%
\setlist[enumerate,1]{label=\protect\enumI{\arabic*.}{0.9}}
\setlist[enumerate,2]{label=\protect\enumII{\arabic*.}{0.9}}
\setlist[enumerate,3]{label=\protect\enumIII{\arabic*.}{0.9}}
\setlist[enumerate,4]{label=\protect\enumIV{\arabic*.}{0.9}}
\setlist[itemize,1]{label={\color{sky}\scriptsize\FilledDiamondShadowC}}
\setlist[itemize,2]{label={\color{silvblue}\scriptsize\DiamondShadowB }}
\setlist[itemize,3]{label={\color{sky}\scriptsize\FilledDiamondshape}}
\setlist[itemize,4]{label={\color{silvblue}\scriptsize\Diamondshape}}
\SetEnumerateShortLabel{plp}{\protect\enumI{(\textit{\alph*})}{1}}
\SetEnumerateShortLabel{lp}{\protect\enumI{\textit{\alph*})}{1}}
\SetEnumerateShortLabel{ld}{\protect\enumI{\textit{\alph*}.}{1}}
\SetEnumerateShortLabel{pnp}{\protect\enumI{(\arabic*)}{0.9}}
\SetEnumerateShortLabel{np}{\protect\enumI{\arabic*)}{0.9}}
\SetEnumerateShortLabel{rp}{\protect\enumI{\Roman*)}{0.9}}
\SetEnumerateShortLabel{rd}{\protect\enumI{\Roman*.}{0.9}}

% Decoration stuff
\newcommand{\deco}[1]{
\def\valor{#1}
\begin{center}
  \if\valor1{\color{silvblue}\adforn{21}\quad{\scriptsize $\diamondsuit$}\quad\adforn{49}}
  \else
    \if\valor2{\color{silvblue}\adforn{20}\quad{\scriptsize $\diamondsuit$}\quad\adforn{48}}
    \else
      \if\valor3{\color{babeblue}\rule{\textwidth}{0.3mm}\\[-1em] \fcolorbox{white}{white}{\color{silvblue}{\scriptsize $\diamondsuit$}}}
      \else
        \if\valor4{\color{babeblue}\rule{5em}{0.3mm}\\[-1em] \fcolorbox{white}{white}{\color{silvblue}{\scriptsize $\diamondsuit$}}}
        \else
          \if\valor5{\color{babeblue}\rule{15em}{0.3mm}\\[-1em] \fcolorbox{white}{white}{{\scriptsize \adforn{21}{\color{silvblue}$\diamondsuit$}\adforn{49}}}}
          \else
            \if\valor6{\color{silvblue}\rule{15em}{0.2mm}\\[-1em] \fcolorbox{white}{white}{{\scriptsize \adforn{21}$\diamondsuit$\adforn{49}}}}
            \else
              \if\valor7{\color{babeblue}\rule{\textwidth}{0.3mm}\\[-1em] \fcolorbox{white}{white}{{\color{silvblue}\adforn{20}\quad{\scriptsize $\diamondsuit$}\quad\adforn{48}}}}\\[1em]
              \else
                \if\valor8{\color{babeblue}\rule{\textwidth}{0.3mm}\\[-1em] \fcolorbox{white}{white}{\adforn{20}{\color{silvblue}\quad{\scriptsize $\diamondsuit$}\quad}\adforn{48}}}
                \else
                  \if\valor9{\color{silvblue}\scriptsize\adforn{21} $\diamondsuit$ \adforn{49}}
                  \fi
                \fi
              \fi
            \fi
          \fi
        \fi
      \fi
    \fi
  \fi
\end{center}
}

% Headers and footers stuff
\lhead{}
\rhead{}
\renewcommand{\headrulewidth}{0pt}
\cfoot{
{\color{silvblue}\scriptsize\adforn{21} $\diamondsuit$ \adforn{49}}\\
\thepage
}
\pagestyle{fancy}

% Math stuff
\newcommand{\td}[3][]{\dfrac{\mathrm{d}^{#1}#2}{\mathrm{d}#3^{#1}}}
\newcommand{\pd}[3][]{\dfrac{\partial^{#1}#2}{\partial#3^{#1}}}
\newcommand{\dif}{\,\mathrm{d}}
\newcommand{\diff}{\,\partial}
\sisetup{
  inter-unit-product=\ensuremath{\cdot},
}
