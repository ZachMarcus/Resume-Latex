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
\usepackage[hmargin=1.25cm, vmargin=0.8cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{enumitem}

% Color definitions
\definecolor{primary}{HTML}{000000} 
\definecolor{headings}{HTML}{000000}
\definecolor{subheadings}{HTML}{000000}

% Trebuchet MS
% Georgia
%
% Tried:
% Verdana+Georgia
% EB Garamond+Free Helvetian  which is a little different - the serif for the content
% Font definitions
\defaultfontfeatures{Mapping=tex-text}
\def \ContentFont {Verdana}
\def \FluffFont {Georgia}
\def \NameFont {\FluffFont}
\def \ContactFont {\FluffFont}
\def \HeaderFont {\FluffFont}
\def \SubHeaderFont {\FluffFont}
\def \AboutFont {\FluffFont}

%\setmainfont{\ContentFont}
%\setsansfont{\ContentFont}
%\setmonofont{\ContentFont}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec{\SubHeaderFont}\selectfont #1 \normalfont}

% Other defines for title
\titleformat{\subsection}{\color{subheadings}
\fontspec{\ContentFont}\fontsize{12pt}{12pt}\selectfont\raggedright\bfseries}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Name command
\newcommand{\namesection}[3]{
	\centering{
		\sffamily
		\fontspec{\NameFont}\fontsize{40pt}{10cm}\selectfont #1 
		\fontspec{\NameFont}\selectfont #2
    } \\
	\vspace{5pt}
    \centering{ \color{headings}\fontspec\NameFont\fontsize{11pt}{14pt}\selectfont #3}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
	\vspace{-15pt}
}

% Headings command - modifying section
\titleformat{\section}{\color{headings}
\scshape\fontspec{\HeaderFont}\fontsize{16pt}{24pt}\selectfont\uppercase}{} {0em}{}

% Subheadings command - runsubsection
\newcommand{\runsubsection}[2]{\color{subheadings}
\fontspec{\SubHeaderFont}\fontsize{12pt}{12pt}\selectfont\bfseries{#1}\hfill{#2}\\\normalfont}

% About command
\newcommand{\about}[2]{\color{subheadings}\fontspec{\AboutFont}\textit{#1} {\hfill #2}}

% Section separators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep0.8mm \parskip0pt \parsep0pt \fontspec{\ContentFont}\fontsize{12pt}{12pt}}{\end{itemize}\vspace{-\topsep}}

% Skills command
\newcommand{\skill}[2]{\color{subheadings}\fontspec{\ContentFont}\fontsize{12pt}{12pt} \item[]\hspace{-10mm} \textit{#1:}{#2}}





