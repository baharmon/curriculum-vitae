% Intro Options
\ProvidesClass{baharmon_cv}[]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=2.5cm, vmargin=2.5cm]{geometry}
\usepackage{hyperref}

% Publications
% \usepackage{cite}
% \renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{000000}
\definecolor{body}{HTML}{000000}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{department}{HTML}{777777}
\definecolor{dividers}{HTML}{D8D8D8}
\definecolor{references}{HTML}{E0E0E0}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Scale=1,Color=body, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

% Date command
%\usepackage[absolute]{textpos}
%\usepackage[UKenglish]{isodate}
%\setlength{\TPHorizModule}{1mm}
%\setlength{\TPVertModule}{1mm}
%\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
%\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont
%Last Updated on \today
%\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
\begin{centering}
\fontsize{30pt}{36pt}
\fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
\\[5pt]
\color{headings}
\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{11pt}{14pt}\selectfont #3
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{-15pt}
\end{centering}
}

% Section seperators
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Section dividers
\newcommand{\sectiondivider}{\noindent\makebox[\linewidth]{\color{dividers}\rule{\paperwidth}{0.4pt}}}

%% Section dividers
%\newcommand{\refdivider}{\noindent\makebox[\linewidth]{\color{referencess}\rule{\paperwidth}{0.4pt}}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subheadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{11pt}{11pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{11pt}{11pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Department command
\newcommand{\department}[1]{
\color{department}\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{9pt}{9pt}\selectfont\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}