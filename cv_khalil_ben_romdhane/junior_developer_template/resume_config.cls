%-------------------------------------------------------------------------------
%                Resume Config Class (Optimized)
%-------------------------------------------------------------------------------

\ProvidesClass{resume_config}[2023 v1.0 optimized]
\NeedsTeXFormat{LaTeX2e}

\LoadClass[11pt]{article}

%-------------------------------------------------------------------------------
%                Packages (clean + minimal)
%-------------------------------------------------------------------------------

\RequirePackage{geometry}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fontspec}
\RequirePackage[english]{babel}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage{etoolbox}
\RequirePackage{calc}
\RequirePackage{setspace}
\RequirePackage{xparse}
\RequirePackage{relsize}
\RequirePackage{graphicx}
\RequirePackage[x11names]{xcolor}
\definecolor{NavyBlue}{RGB}{0, 32, 96}

%-------------------------------------------------------------------------------
%                Fonts
%-------------------------------------------------------------------------------

\setmainfont{TeX Gyre Heros}

%-------------------------------------------------------------------------------
%                Formatting
%-------------------------------------------------------------------------------

\setlength{\tabcolsep}{0in}

\pagenumbering{gobble}
\pagestyle{empty}

\raggedbottom
\raggedright

\geometry{
    paper=letterpaper,
    top=0.5in,
    bottom=0.5in,
    left=0.5in,
    right=0.5in,
    headheight=0.75cm,
    footskip=1cm,
    headsep=0.5cm
}

%-------------------------------------------------------------------------------
%                Section format
%-------------------------------------------------------------------------------

\titleformat{\section}%
    {\vspace{-4pt}\scshape\raggedright\large\bfseries}%
    {}%
    {0em}%
    {}%
    [\color{black}\titlerule\vspace{-5pt}]

%-------------------------------------------------------------------------------
%                Custom Commands
%-------------------------------------------------------------------------------

\newcommand*{\CustomBullet}{%
    \hspace{0.1em}%
    \raisebox{-0.1em}{\scalebox{1.5}{$\cdot$}}%
    \hspace{0.5em}%
}

% Header
\NewDocumentCommand{\Header}{m m m m m m o}{
    \fancyhf{}
    \begin{center}
        {\Huge\textbf{\textsc{\textcolor{NavyBlue}{#1}}}}\\[4pt]
        \textcolor{black}{
            #2 \CustomBullet #3 \CustomBullet \href{mailto:#4}{#4} \\
            \href{https://linkedin.com/in/#5}{linkedin.com/in/#5} \CustomBullet
            \href{https://github.com/#6}{github.com/#6}
            \IfValueT{#7}{ \CustomBullet \href{#7}{#7}}
        }\\[3pt]
    \end{center}
    \vspace{-15pt}
}

% Work Experience
\newcommand{\WorkExperience}[5]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} & \textit{#3} \\
        #2 & #4 \\
    \end{tabular*}

    \begin{itemize}[noitemsep, topsep=0pt, leftmargin=2em, label=--]
        #5
    \end{itemize}
}

% Project
\newcommand{\Project}[4]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} $|$ #2 \href{https://github.com/#3}{GitHub}
    \end{tabular*}

    \begin{itemize}[noitemsep, topsep=0pt, leftmargin=2em, label=--]
        #4
    \end{itemize}
}

% Certification
\newcommand{\Certification}[3]{
    \noindent
    \textbf{#1} $|$ {#2}\hfill \textit{#3}\\
}

% Education
\newcommand{\EducationExperience}[4]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} & \textit{#3} \\
        #2 & #4 \\
    \end{tabular*}
}

% Profile
\newcommand{\Profil}[1]{
    #1\\[10pt]
}

% Skills
\newcommand{\SkillItem}[2]{\item \textbf{#1}{#2}}

\newcommand{\SkillList}[1]{
    \begin{itemize}[label={}, itemsep=-0.2em, leftmargin=0em]
        #1
    \end{itemize}
}