%.

% Preliminary declarations
\ProvidesClass{Bitacora}[2021/02/04 V1 by Amado Cabrera]
\NeedsTeXFormat{LaTeX2e}

% Options
\LoadClass{article}

% Packages
\RequirePackage[a4paper, top=1in, bottom=1in, left=1in, right=1in]{geometry}
\RequirePackage{multicol}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{enumerate}
\RequirePackage[spanish]{babel}
\decimalpoint
\RequirePackage{wasysym}
\RequirePackage{clock}
\RequirePackage[clock]{ifsym}
\RequirePackage{tikz}

% Remove identation
\setlength{\parindent}{0pt}

\definecolor{verdecito}{rgb}{0.0, 0.42, 0.24}

% Maketitle commands
\newcommand{\id}[1]{\def\@id{#1}}
\newcommand{\encabezado}[1]{\def\@encabezado{#1}}
\renewcommand{\and}[1]{{\normalfont #1}}

\renewcommand{\maketitle}{
  \begin{center}
    \textbf{\@encabezado}
  \end{center}\vspace{0.5em}
  \begin{flushright}
    \textbf{\large\@author}\\
    {\large \@id}
  \end{flushright}

  \begin{center}
    \textbf{\Huge \@title}
  \end{center}\vspace{-2em}
}

% Rules
\newcommand{\bline}{{\color{verdecito}\rule{\textwidth}{0.5mm}}\\}
\newcommand{\sline}{{\color{verdecito}\rule{\textwidth}{0.1mm}}\\}

% Binnacle records
\newenvironment{registro}{
  \newcommand{\fecha}[1]{\cent~##1}
  \newcommand{\tiempo}[1]{$\boldsymbol{\bigstar}$~##1}
  \newcommand{\estatus}[1]{{\scriptsize\ClockFrametrue\ClockStyle=0\clock{3}{0}}~##1}
  \newcommand{\datos}[3]{
    \phantom{M}\\
    \begin{tabular*}{\textwidth}{l @{\extracolsep{\fill}} l @{\extracolsep{\fill}} l}
    {\color{verdecito}\fecha{##1}} & {\color{verdecito}\tiempo{##2}} & {\color{verdecito}\estatus{##3}}
    \end{tabular*}\vspace{1em}\\
    \textbf{Descripción:}\\
  }
  \newcommand{\autor}[1]{\phantom{.}\hfill\textit{##1}}
  \newenvironment{datosm}{
    \phantom{M}\\
    \begin{tabular*}{\textwidth}{l @{\extracolsep{\fill}} l @{\extracolsep{\fill}} l}
  }
  {
    \end{tabular*}\vspace{1em}\\
    \textbf{Descripción:}\\
  }
}
{
  \newline
  \lmenor
}

% A line that doesen't occupe space to avoid «Ther is no line here to end» errors
\newcommand{\phantomline}{\phantom{M}\vspace{-1.5em}}

% Part command
\newcommand{\parte}[1]{
  \section*{#1}\vspace{-1.3em}
  \lmayor
}

\newcommand{\td}[3][]{\dfrac{\mathrm{d}^{#1}#2}{\mathrm{d}#3^{#1}}}
\newcommand{\pd}[3][]{\dfrac{\partial^{#1}#2}{\partial#3^{#1}}}
\newcommand{\dif}{\,\mathrm{d}}
\newcommand{\diff}{\,\partial}

%
