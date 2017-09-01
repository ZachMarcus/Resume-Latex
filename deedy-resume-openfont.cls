% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{enumitem}
\usepackage{outline}
\usepackage{contour}
\usepackage{relsize}

% Color definitions
\definecolor{primary}{HTML}{000000} 
\definecolor{headings}{HTML}{000000}
\definecolor{subheadings}{HTML}{000000}

% Trying archetype comparisons:
%
% Serifs I don't hate:
% GFS Didot
% Old Standard TT
% Tinos
% Vollkorn
%
% Sans Serifs I don't hate:
% Arimo
% Cantarell
% Lato
% Noto
% Roboto
% Verdana
%
% Font definitions
\defaultfontfeatures{Mapping=tex-text}
%\def \FluffFont {Fira Sans}
\newcommand{\FluffFont}[0]{Fira Sans}
\newcommand{\ContentFont}[0]{Lato}
\newcommand{\NameFont}[0]{\FluffFont}
\newcommand{\ContactFont}[0]{\FluffFont}
\newcommand{\HeaderFont}[0]{\FluffFont}
\newcommand{\SubHeaderFont}[0]{\FluffFont}
\newcommand{\AboutFont}[0]{\FluffFont}

\newcommand{\ContentSize}[0]{11.2pt}

\setmainfont{\ContentFont}
%\setsansfont{\ContentFont}
%\setmonofont{\ContentFont}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec\SubHeaderFont\selectfont #1 \normalfont}

% Other defines for title
\titleformat{\subsection}{\color{subheadings}
\fontspec\ContentFont\selectfont\raggedright\bfseries}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Name command, originally 40pt
\newcommand{\namesection}[3]{
	\centering{
		\sffamily
		\fontspec\NameFont\fontsize{38pt}{10cm}\selectfont #1 
		\fontspec\NameFont\selectfont #2
    } \\
	\vspace{5pt}
    \centering{ \color{headings}\fontspec\NameFont\fontsize{12pt}{14pt}\selectfont #3}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
	\vspace{-15pt}
}

% Headings command - modifying section
\titleformat{\section}{\color{headings}
\scshape\fontspec\HeaderFont\fontsize{16pt}{24pt}\selectfont\uppercase}{} {0em}{}

% Subheadings command - runsubsection
\newcommand{\runsubsection}[2]{\color{subheadings}
\fontspec[BoldFont=Fira Sans Bold]\SubHeaderFont
\bfseries{\large#1}
\hfill{\normalsize#2}\\
\fontsize{\ContentSize}{\ContentSize}\normalfont}

% About command
\newcommand{\about}[2]{\color{subheadings}\fontspec\AboutFont\raggedright{#1} {\hfill #2}\hspace{-1.2mm}}

% Section separators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

\newenvironment{tightemize}{\vspace{-\topsep}\vspace{-1.0mm} \fontspec\ContentFont\fontsize{\ContentSize}{\ContentSize} \begin{itemize}\itemsep0.3mm \parskip0pt \parsep0pt }{\end{itemize}\vspace{-\topsep}}


% Skills command
\newcommand{\skill}[2]{\color{subheadings}\fontspec\ContentFont \item[]\hspace{-10mm} \textit{#1}{#2}}





