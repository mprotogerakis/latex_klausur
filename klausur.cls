\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{klausur}[2015/02/01 Klausur Dokumentenklasse]

% Passes and class options to the underlying article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{exam}}
\ProcessOptions

% Load LaTeX's article class with the `titlepage' option so that \maketitle creates a title page, not just a title block
\LoadClass[addpoints,12pt,a4paper,oneside]{exam}
\RequirePackage[a4paper, top=10mm, left=35mm, right=25mm, bottom=10mm]{geometry}

\RequirePackage{color}  
\RequirePackage{graphicx}
\RequirePackage{epstopdf}
\RequirePackage[T1]{fontenc}
\RequirePackage{tabularx}
\RequirePackage{blindtext}
\RequirePackage{setspace}
\RequirePackage{tabularx}
\RequirePackage{enumitem} 
\RequirePackage[table]{xcolor}
\RequirePackage{multicol}
\RequirePackage{lastpage}
\RequirePackage{titlesec}
\RequirePackage{verbatim}
\RequirePackage{amssymb}
\RequirePackage{fancyvrb}
\RequirePackage[ngerman]{babel}
\RequirePackage[utf8]{inputenc}

\RequirePackage{a4}



\RequirePackage[ngerman]{babel}

\RequirePackage{framed}
\RequirePackage{paralist}
\RequirePackage[fleqn]{amsmath}

\RequirePackage{multirow}
\RequirePackage{trsym}

\newcolumntype{b}{>{\centering\arraybackslash}X}
\newcolumntype{C}{>{\arraybackslash} m{4cm} }

\def\aufgabe{\question}
\def\teil{\part}

\def\dozent#1{\def\@dozent{#1}}
\newcommand{\printdozent}{\@dozent}
\def\datum#1{\def\@datum{#1}}
\newcommand{\printdatum}{\@datum}
\def\semester#1{\def\@semester{#1}}
\newcommand{\printsemester}{\@semester}
\def\veranstaltung#1{\def\@veranstaltung{#1}}
\newcommand{\printveranstaltung}{\@veranstaltung}
\def\klausurlabel#1{\def\@klausurlabel{#1}}
\newcommand{\printklausurlabel}{\@klausurlabel}
\newcommand{\im} {\mathrm{j}}
\newcommand{\un} {\underline}
\newcommand{\Ohm} {\mathrm{\Omega}}


\semester{\small $\ll$Semester hier eintragen$\gg$}
\dozent{$\ll$Dozent hier eintragen$\gg$}
\datum{\today}
\veranstaltung{\small $\ll$Semester hier eintragen$\gg$}

\klausurlabel{Klausur}

\newenvironment {aufgaben}
                {\begin{questions}}
                {\end{questions}}
\newenvironment {teilaufgaben}
                {\begin{parts}}
                {\end{parts}}  
\newenvironment {multiplechoice}
                {\begin{checkboxes}}
                {\end{checkboxes}}                       
\newenvironment {klausur}
                {\document
                	\onehalfspacing
                }
                {\enddocument}

% STYLE question and part headers
\renewcommand{\questionshook}{\setlength{\itemsep}{1cm}}
\renewcommand{\partshook}{\setlength{\itemsep}{0.5cm}}
\qformat{{\Large \textbf{Aufgabe \thequestion}} \hfill (\pointsofquestion{\thequestion} Punkte)}

% Table Labels
\vqword{Aufgabe}
\hqword{Aufgabe}
\vpgword{Seite}
\vpword{Punkte}
\hpword{Punkte}
\vsword{erreicht}
\hsword{erreicht}
\vtword{{\huge $\Sigma$}} 
\htword{{\huge $\Sigma$}} 

% Point Labels
\pointpoints{Punkt}{Punkte}
 
% Custom Colors
\definecolor{fsi}{RGB}{0,81,150}
\definecolor{slightGray}{gray}{0.6}
\definecolor{tableShade}{gray}{0.9}

% Page Style
\runningheader{}{}{}
\runningfooter{}{}{}
\runningfootrule
\runningheadrule


\extrafootheight[0cm]{0cm}
\extraheadheight[0cm]{0cm} 

\def\setExamHeaderAndFooter #1#2#3{
    \lhead{\includegraphics[width = \hsize]{graphics/HSDMarkev2HSDRotCMYKEISchwv2}}
    \lfoot{#1: #2 #3}
    \rfoot{Seite \thepage~/ \numpages}
}

\def\makeExamTitlePage #1#2#3#4#5#6{
    \begin{center}
        {\LARGE\bf #1 #2}
        \vskip 12pt
        {\Large Prüfer: #6}
        \vskip 12pt
        {\Large Termin: #3 #4}
    \end{center}
    \vskip 12pt
    \hrule
    \vskip 12pt

    \begin{framed}
        {\Large\bf Auszufüllen durch den Kandidaten!}
        \vskip 24pt
        \begin{tabular}[l]{llp{12pt}llc}
            {\bf Familienname:} & ...................................... & & {\bf Matrikel-Nr.:} & ...................... \\ 
            & & & & \\
            {\bf Vorname:}      & ...................................... & & {\bf Versuch-Nr.:}  & $1\qquad 2\qquad 3 $
        \end{tabular}
        \vskip 24pt
        Ich bestätige durch meine Unterschrift, dass ich die Klausurhinweise gelesen und verstanden habe und sie als Bestandteile der Prüfungsbedingungen anerkenne.
        \vskip 24pt
        \begin{tabular}{ll}
            {\bf Unterschrift des Kandidaten: } & ......................................................
        \end{tabular}
    \end{framed}
    \begin{framed}
        {\Large\bf Klausurergebnis}
        \vskip 12pt
        #5
        \vskip 24pt
        \begin{tabular}[l]{p{5cm}lp{12pt}ll}
            {\bf Klausurbewertung:} & ................ & & {\bf 1. Prüfer} & ...................................... \\ 
            & & & & \\
            {\bf Datum Klausureinsicht:} & ................ & & {\bf Unterschrift} & ......................................
        \end{tabular}
    \end{framed}
    \newpage
}

\def\makeExamRulesPage #1#2#3#4{
    {\large\bf Hinweise zur Klausurdurchführung:}
    \vspace*{1cm}
    \begin{compactenum}[a)]
        \item Die Bearbeitungszeit für die Klausuraufgaben beträgt #1 min.
        \item Zugelassene Hilfsmittel sind Schreib- und Zeichenmaterial, nichtprogrammierbare Taschenrechner sowie {\bf #4 handgeschriebene DIN A4 Seiten}.
        \item Sollten sich während der Klausurdurchführung andere als die genannten zulässigen Hilfsmittel in Reichweite des Kandidaten befinden, wird dies als Täuschungsversuch gewertet und die Klausur gilt als {\bf nicht bestanden}. Dies umfasst - ohne Anspruch auf Voll\-stän\-dig\-keit - insbesondere Bücher, Lehrunterlagen, Smartphones, Tablets und Laptops.
        \item Prüfen Sie vor Beginn der Bearbeitung die Vollständigkeit des ausgehändigten Klausurexemplars. Es enthält inklusive Deckblatt insgesamt {\bf #2 Aufgaben auf #3 durchnummerierten Seiten}.
        \item Zur Bearbeitung der Klausuraufgaben sind {\bf dokumentenechte Schreiber} zu verwenden und es werden nur Lösungsteile, die mit dokumentenechten Schreibern verfasst wurden, bewertet. Entwürfe mit Bleistift sind zulässig, wenn anschließend dokumentenecht nachgezeichnet wird. Die Verwendung von Rotstiften ist nicht zulässig.
        \item Die Bearbeitung der Klausuraufgaben erfolgt auf den im Klausurdokument enthaltenen Leerseiten. {\bf Die Heftung des Klausurexemplars darf nicht gelöst werden}. Sollten Sie trotz der in ausreichender Zahl vorhandenen Leerblätter weitere Lösungsblätter benötigen, so sind diese beim Aufsichtspersonal anzufordern und der Klausur anzuheften. Jedes solche Blatt muss dann zusätzlich von Ihnen mit Namen und Matrikel-Nr. versehen werden. Markieren Sie bitte in eindeutiger Weise, auf welcher Seite die Lösung fortgeführt wird, und vermerken Sie bitte zusätzlich die Aufgabennummer, auf die Sie sich beziehen. {\bf Nur geheftete Blätter werden bewertet.}
        \item Sollten die Lösungsblätter mehrere alternative Lösungen zu einzelnen Aufgabenteilen enthalten, so wird die Lösung bewertet, die zur geringsten Punktzahl führt.
        \item Während der Klausur darf jeweils nur ein Teilnehmer den Raum verlassen; sämtliche Klausurunterlagen müssen hierbei am Sitzplatz verbleiben.
    \end{compactenum}
    \newpage
}

\def\makeExamRulesPageFree #1#2#3{
    {\large\bf Hinweise zur Klausurdurchführung:}
	\begin{enumerate}
		\item Die Bearbeitungszeit für die Klausuraufgaben beträgt #1 min.
		\item Zugelassene Hilfsmittel sind Schreib- und Zeichenmaterial, nichtprogrammierbare Taschenrechner sowie eine unbeschränkte Zahl an schriftlichen Unterlagen.
		\item Sollten sich während der Klausurdurchführung andere als die genannten zulässigen Hilfsmittel in Reichweite des Kandidaten befinden, wird dies als Täuschungsversuch gewertet und die Klausur gilt als {\bf nicht bestanden}. Dies umfasst - ohne Anspruch auf Voll\-stän\-dig\-keit - Smartphones, Tablets und Laptops.
		\item Prüfen Sie vor Beginn der Bearbeitung die Vollständigkeit des ausgehändigten Klausurexemplars. Es enthält inklusive Deckblatt insgesamt {\bf #2 Aufgaben auf #3 durchnummerierten Seiten}.
		\item Zur Bearbeitung der Klausuraufgaben sind {\bf dokumentenechte Schreiber} zu verwenden und es werden nur Lösungsteile, die mit dokumentenechten Schreibern verfasst wurden, bewertet. Entwürfe mit Bleistift sind zulässig, wenn anschließend dokumentenecht nachgezeichnet wird. Die Verwendung von Rotstiften ist nicht zulässig.
		\item Die Bearbeitung der Klausuraufgaben erfolgt auf den im Klausurdokument enthaltenen Leerseiten. {\bf Die Heftung des Klausurexemplars darf nicht gelöst werden}. Sollten Sie trotz der in ausreichender Zahl vorhandenen Leerblätter weitere Lösungsblätter benötigen, so sind diese beim Aufsichtspersonal anzufordern und der Klausur anzuheften. Jedes solche Blatt muss dann zusätzlich von Ihnen mit Namen und Matrikel-Nr. versehen werden. Markieren Sie bitte in eindeutiger Weise, auf welcher Seite die Lösung fortgeführt wird, und vermerken Sie bitte zusätzlich die Aufgabennummer, auf die Sie sich beziehen. {\bf Nur geheftete Blätter werden bewertet.}
		\item Sollten die Lösungsblätter mehrere alternative Lösungen zu einzelnen Aufgabenteilen enthalten, so wird die Lösung bewertet, die zur geringsten Punktzahl führt.
		\item Während der Klausur darf jeweils nur ein Teilnehmer den Raum verlassen; sämtliche Klausurunterlagen müssen hierbei am Sitzplatz verbleiben.
	\end{enumerate}
    \newpage
}



\endinput