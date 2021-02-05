%

% Declaraciones preliminares
\ProvidesClass{Bitacora}[2021/02/04 V1 by Amado Cabrera]
\NeedsTeXFormat{LaTeX2e}

% Opciones
\LoadClass{article}

% Paquetes necesarios
\RequirePackage[a4paper, top=1in, bottom=1in, left=1in, right=1in]{geometry}
\RequirePackage{multicol}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{enumerate}
\RequirePackage[spanish]{babel}
\decimalpoint

% Remove identation
\setlength{\parindent}{0pt}

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
\newcommand{\lmayor}{\rule{6.25in}{0.5mm}\\}
\newcommand{\lmenor}{\rule{6.25in}{0.1mm}\\}

% Binnacle records
\newenvironment{registro}{
  \newcommand{\fecha}[1]{\textbf{Fecha:}~##1}
  \newcommand{\tiempo}[1]{\textbf{Tiempo:}~##1}
  \newcommand{\estatus}[1]{\textbf{Estatus:}~##1}
  \newcommand{\datos}[3]{
    \phantom{M}\\
    \begin{tabular*}{\textwidth}{l @{\extracolsep{\fill}} l @{\extracolsep{\fill}} l}
    \fecha{##1} & \tiempo{##2} & \estatus{##3}
    \end{tabular*}\vspace{1em}\\
    \textbf{Descripción:}\\
  }
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

%
