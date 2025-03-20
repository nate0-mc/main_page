\ProvidesClass{notescls}
\LoadClass[12pt, twoside]{article}
% [legalpaper, 12pt, twoside]

% PACKAGES

\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{geometry}
\RequirePackage[toc,page]{appendix}
\RequirePackage{hyperref}
\RequirePackage{tocloft}
\RequirePackage{fontspec}
\RequirePackage[T1]{fontenc}
\RequirePackage{sectsty}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr, lastpage}

% -----------------------------------------------------------------------
% CONFIG


% Section and Subsection Formatting
\titleformat{\section}
  [block]
  {\Large\bfseries\sffamily}  % Format: font, size, and color
  {\textcolor{purple}{\S{\thesection}}}  % Colored section number
  {1em}  % Space between number and title
  {}  % Before code
  []  % After code

\titleformat{\subsection}
  [block]
  {\Large\bfseries\sffamily}  % Format: font, size, and color
  {\textcolor{purple}{\S\thesubsection}}  % Colored subsection number with section symbol
  {1em}  % Space between number and title
  {}  % Before code
  []  % After code
  
\titleformat{\subsection}
  [block]
  {\large\bfseries\sffamily}  % Format: font, size, and color
  {\textcolor{purple}{\S\thesubsection}}  % Colored subsection number with section symbol
  {1em}  % Space between number and title
  {}  % Before code
  []  % After code
  
\titleformat{\subsubsection}
  [block]
  {\normalsize\bfseries\sffamily}  % Format: font, size, and color
  {\textcolor{purple}{\S\thesubsubsection}}  % Colored subsection number with section symbol
  {1em}  % Space between number and title
  {}  % Before code
  []  % After code  
  
  
% TOC Formatting
\renewcommand{\numberline}[1]{\textsf{\textbf{\textcolor{purple}{\S#1}}}\space} % color for the numbering in the toc 
\renewcommand{\cftsecfont}{\bfseries\sffamily} % font for the section
\renewcommand{\cftsecpagefont}{\bfseries\sffamily} % font for the section's page number
\setlength{\cftbeforesecskip}{1.1em} % line spacing for the section, etc.
\setlength{\cftbeforesubsecskip}{0.15em}
\setlength{\cftbeforesubsubsecskip}{0.1em}
\renewcommand{\contentsname}{\textsf{Contents}} % "Contents" heading
\renewcommand{\cftloftitlefont}{\Large\bfseries\sffamily} % "List of Figures" heading


% Page Layout and Margins
\geometry{a4paper, portrait, margin=1.1in}



% fancyhdr
% ! ! ! EDIT THE HEADER AND FOOTER TEXT HERE. REPLACE "HEADER" AND "FOOTER" WITH WHATEVER ! ! !
\pagestyle{fancy}
\fancyhead{} % clear all header fields
\fancyhead[RO,LE]{{\fontfamily{qag}\selectfont\textbf{HEADER}}}
\fancyfoot{} % clear all footer fields
\fancyfoot[LE,RO]{\thepage}
\fancyfoot[LO,RE]{EDIT IN THE CLS FILE}
\fancyheadoffset{0.8cm} 
\fancyfootoffset{0.8cm}

\renewcommand{\subsectionmark}[1]{%
  \markright{\MakeUppercase{\thesubsection.\ #1}}}%



% Header and Footer Rule for fancyhdr
\renewcommand{\headrulewidth}{0.5pt}% Default \headrulewidth is 0.4pt
\renewcommand{\footrulewidth}{0.5pt}% Default \footrulewidth is 0p/t


% Removing Footnote Line and \textlabel
\makeatletter
\newcommand*{\textlabel}[2]{%
  \edef\@currentlabel{#1}% Set target label
  \phantomsection% Correct hyper reference link
  #1\label{#2}% Print and store label
}
\makeatother

\let\footnoterule\relax