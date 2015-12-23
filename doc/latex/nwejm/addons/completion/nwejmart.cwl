# mode: nwejmart.cls
# denisbitouze, 23.12.2015
#
#include:class-book
#include:latex-document
#include:latex-mathsymbols
#include:tex
#include:xparse
#include:l3keys2e
#include:l3sort
#include:nag
#include:fontenc
#include:inputenc
#include:fontspec
#include:graphicx
#include:adjustbox
#include:draftwatermark
#include:xspace
#include:csquotes
#include:biblatex
#include:array
#include:booktabs
#include:varioref
#include:mathtools
#include:mathrsfs
#include:esvect
#include:kpfonts
#include:translations
#include:fmtcount
#include:geometry
#include:babel
#include:tocvsec2
#include:microtype
#include:datetime2
#include:enumitem
#include:amsthm
#include:thmtools
#include:hyperref
#include:hypcap
#include:bookmark
#include:glossaries
#include:cleveref
#
# Document class
#keyvals:\documentclass/nwejmart
french
english
ngerman
dutch
#endkeyvals
#
# Cover and title pages
#
# Title, etc.
\title{title}#n
\title[short title]{title}#n
\subtitle{%<subtitle%>}#n*
\subtitle[%<short subtitle%>]{%<subtitle%>}#n*
#
# Author
\author{%<Last name%>, %<First name%>}#n
\author[affiliation={%<affiliation%>}]{%<Last name%>, %<First name%>}#n
\author[affiliation=[%<affiliation's tag%>]{%<affiliation%>}]{%<Last name%>, %<First name%>}#n
\author[affiliationtagged={%<affiliation's tag%>}]{%<Last name%>, %<First name%>}#n
#
# Dates
\dates{received=%<yyyy%>-%<mm%>-%<dd%>,accepted=%<yyyy%>-%<mm%>-%<dd%>,online=%<yyyy%>-%<mm%>-%<dd%>}#n
#
# Math commands
\N#m
\Z#m
\D#m
\Q#m
\R#m
\C#m
\K#m
\set{%<set self-contained definition%>}#m
\set{%<set definition%>}[%<such that...%>]#m
\begin{Theorem}
\begin{Corollary}
\begin{Conjecture}
\begin{Proposition}
\begin{Lemma}
\begin{Axiom}
\begin{Definition}
\begin{Remark}
\begin{Example}
\begin{Notation}
\begin{Proof}
\end{Theorem}
\end{Corollary}
\end{Conjecture}
\end{Proposition}
\end{Lemma}
\end{Axiom}
\end{Definition}
\end{Remark}
\end{Example}
\end{Notation}
\end{Proof}
\begin{theorem}
\begin{corollary}
\begin{conjecture}
\begin{proposition}
\begin{lemma}
\begin{axiom}
\begin{definition}
\begin{remark}
\begin{example}
\begin{notation}
\begin{proof}
\end{theorem}
\end{corollary}
\end{conjecture}
\end{proposition}
\end{lemma}
\end{axiom}
\end{definition}
\end{remark}
\end{example}
\end{notation}
\end{proof}
#
# Miscellaneous commands
\keywords{%<list of keywords%>}#n
\msc{%<list of MSCs%>}#n
\nwejm#n
\nwejm*#n*
\century{%<(positive or negative) integer%>}#n
\century*{%<(positive or negative) integer%>}#n*
\aside{%<interpolated clause%>}#n
\aside*{%<interpolated clause%>}#n
\acknowledgments{%<acknowledgments%>}#n
#
