 
%     aaas.cls
%     
%     version 0.1  (2018年4月)
%
%     航空学报中文版LaTeX模板（非官方）
%     LaTeX Template (unofficial) for Acta Aeronautica et Astronautica Sinica
%
%     by Htallone
%
%     These macros may be freely transmitted, reproduced, or modified
%     provided that this notice is left intact.
 
 
 % 参考了《控制理论与应用》提供的LATEX模板  http://jcta.alljournals.ac.cn/uploadfile/cta_cn/20170419/kzllyy%20template20170419-2.9.zip
 % BHOSC   BUAAthesis  https://github.com/BHOSC/BUAAthesis/
 % 航空学报 http://hkxb.buaa.edu.cn/UserFiles/File/plate-2017-07-20(1).doc
 % 在JBUAA模板上改的

%中文latax模版
\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{aaas}
              [2017/07/07 v0.1
The LaTeX template for Acta Aeronautica et Astronautica Sinica]
\typeout{Document Class `aaas' v0.1 by Htallone (2018/04)}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax
% 引用ctexbook及基本设置
\LoadClass[twocolumn,twoside,a4paper,UTF8]{ctexart}

% \documentclass[10.5pt,onecolumn,twoside,a4paper,UTF8]{ctexart} %article
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  packages
%    这部分声明需要用到的包
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage{fancyhdr}
\usepackage{amsmath,amsfonts,amssymb,graphicx}    % EPS 图片支持
\usepackage{subfigure}   % 使用子图形
\usepackage{indentfirst} % 中文段落首行缩进
\usepackage{bm}          % 公式中的粗体字符(用命令\boldsymbol）
% \usepackage{multicol}    % 正文双栏
\usepackage{indentfirst} % 中文首段缩进
\usepackage{abstract}    % 2栏文档，一栏摘要及关键字宏包
\usepackage{amsthm}      % 使用定理
\usepackage{booktabs}    % 使用表格
\usepackage{siunitx}
\usepackage{tikz}
\usepackage{titlesec}
\usepackage{times}
\usepackage{wasysym}
\usepackage{pifont}
\usepackage[sort]{cite}
\usepackage{ccaption}
\usepackage{float}
\usepackage{calc}
\usetikzlibrary{calc}
\usepackage{environ}

% \usepackage{bigstrut}
%     \setlength\bigstrutjot{3pt}
    
%\def\citedash{$\sim$} % for creating cites like [3,4],[7~10]
%\renewcommand{\theequation}{\thesection.\arabic{equation}}(公式按节编号)


% \usepackage[scheme=plain]{ctex}
\setmainfont{Times New Roman}
\setCJKfamilyfont{hwxingkai}{STXingkai}
\newcommand{\hwxingkai}{\CJKfamily{hwxingkai}}
\usepackage{xeCJK}
% \setCJKmainfont[BoldFont=SimHei]{SimSun}
\setCJKfamilyfont{hei}{SimHei}
\setCJKfamilyfont{kai}{KaiTi}
\setCJKfamilyfont{fang}{FangSong}
\newcommand{\hei}{\CJKfamily{hei}}
\newcommand{\kai}{\CJKfamily{kai}}
\newcommand{\fang}{\CJKfamily{fang}}

\setCJKfamilyfont{simsong}{SimSun}
\newcommand{\simsong}{\CJKfamily{simsong}}
  
\newfontfamily\CalibriFont{Calibri}
\newfontfamily\TimesNMFont{Times New Roman}
\newfontfamily\ArialFont{Arial}

  
\newcommand{\erhao}{\fontsize{22pt}{\baselineskip}\selectfont}      % 字号设置
\newcommand{\xiaoerhao}{\fontsize{20pt}{\baselineskip}\selectfont}      % 字号设置
\newcommand{\sanhao}{\fontsize{16pt}{\baselineskip}\selectfont}      % 字号设置
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}      % 字号设置
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}  % 字号设置
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}    % 字号设置
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}   % 字号设置
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}  % 字号设置
\newcommand{\myxiaoliuhao}{\fontsize{6.5pt}{\baselineskip}\selectfont}  % 字号设置
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}    % 字号设置

\renewcommand{\tablename}{表}
\renewcommand{\figurename}{图}
\captiondelim{~~}
\captionnamefont{\xiaowuhao}
\captiontitlefont{\xiaowuhao}
\setlength{\abovecaptionskip}{0pt}
\setlength{\belowcaptionskip}{0pt}

% \precaption{\vspace{-1em}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  lengths
%    下面的命令重定义页面边距，使其符合中文刊物习惯。
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{lettrine}
\setlength{\parindent}{2em}
\setlength{\voffset}{-4mm}
\setlength{\parskip}{1pt} 
% \setlength{\arraycolsep}{1pt}
\renewcommand{\baselinestretch}{1.11} %定义行间距1.15
\setcounter{page}{1} \makeatletter
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {1.5ex }%
                                   {1.5ex}%
                                   {\normalfont\xiaosihao}}
\renewcommand\subsection{\@startsection {subsection}{1}{\z@}%
                                   {-1pt }%
                                   {1pt}%
                                   {\normalfont\bfseries\hei\wuhao}}
\renewcommand\subsubsection{\@startsection {subsubsection}{1}{\z@}%
                                   {-1pt }%
                                   {1pt}%
                                   {\normalfont\wuhao}}
 \renewcommand{\CJKglue}{\hskip -0.4pt plus 5.5\baselineskip}
 
 
%% 节编号字体为\normalfont，取消黑体
\makeatletter  % see, e.g., p. 26 of "The LaTeX Companion"
  \def\@seccntformat#1{\@ifundefined{#1@cntformat}%
     {\csname the#1\endcsname\quad}%   default setting
     {\csname #1@cntformat\endcsname}% individual control
  }
  \def\section@cntformat{\normalfont{\thesection}\quad}
\makeatother
\makeatletter  % see, e.g., p. 26 of "The LaTeX Companion"
  \def\@subseccntformat#1{\@ifundefined{#1@cntformat}%
     {\csname the#1\endcsname\quad}%   default setting
     {\csname #1@cntformat\endcsname}% individual control
  }
  \def\subsection@cntformat{\normalfont{\thesubsection}\quad}
\makeatother
\makeatletter  % see, e.g., p. 26 of "The LaTeX Companion"
  \def\@subsubseccntformat#1{\@ifundefined{#1@cntformat}%
     {\csname the#1\endcsname\quad}%   default setting
     {\csname #1@cntformat\endcsname}% individual control
  }
  \def\subsubsection@cntformat{\normalfont{\thesubsubsection}\quad}
\makeatother
 
 \usepackage{geometry}
 \newgeometry{
    top=33.5mm, bottom=31.5mm, left=22mm, right=22mm,
    headsep=5mm, headheight=10mm, footskip=10mm,
}
\savegeometry{mastergeometry}
\loadgeometry{mastergeometry}

\setlength{\columnsep}{9mm}
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\parskip}{1pt} \allowdisplaybreaks \makeatother
\newtheoremstyle{mystyle}{3pt}{3pt}{}{\parindent}{\bfseries}{}{5mm}{}
\theoremstyle{mystyle}
\newtheorem{Cor}{\normalsize{{\CJKfamily{hei}推论}}}
\newtheorem{Thm}{\normalsize{{\CJKfamily{hei}定理}}}
\newtheorem{Site}{\normalsize{{\CJKfamily{hei}引理}}}
\newtheorem{Def}{\normalsize{{\CJKfamily{hei}定义}}}
\newtheorem{Rem}{\normalsize{{\CJKfamily{hei}注}}}
\newtheorem{Exa}{\normalsize{{\CJKfamily{hei}例}}}
\newtheorem{Ste}{\normalsize{{\CJKfamily{hei}步骤}}}
\newtheorem{Sup}{\normalsize{{\CJKfamily{hei}假设}}}
\newtheoremstyle{citing}{3pt}{3pt}{}{}{\bfseries}{.}{.5em}{\thmnote{#3}}
\theoremstyle{citing}\newtheorem*{citedthm}{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\diag}{{\rm diag}}
\newcommand{\rank}{{\rm rank}}
\newcommand{\tr}{{\rm tr}}
\newcommand{\sign}{{\rm sign}}
\newcommand{\sgn}{{\rm sgn}}
\newcommand{\Proj}{{\rm Proj}}
\makeatletter
\renewcommand{\proofname}{\normalsize{{\CJKfamily{hei}证}}}
\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed}%
  \normalfont \topsep.1\p@\@plus.1\p@ \labelsep0em\relax
  \trivlist
  \item[\hskip 2.2em
        \bfseries
    #1]\hskip .5em\ignorespaces
}{%
  \endtrivlist\@endpefalse
} \makeatother


\newcommand{\positiontextbox}[4][]{%
  \begin{tikzpicture}[remember picture,overlay]
%    \draw[step=0.5,gray!80!white] (current page.north west) grid (current page.south east); % For controlling
    \node[inner sep=0pt,right,align=left, #1] at ($(current page.north west) + (#2,-#3)$) {#4};
  \end{tikzpicture}%
}


\NewEnviron{CAbstractAAAS}{%
\vspace{-2em}
\begin{center}
\parbox{\textwidth}{
\wuhao\setlength{\parindent}{0em}
\newlength{\somelength}
\settowidth{\somelength}{中图分类号}

{\hei\xiaowuhao \makebox[\widthof{关键词}][s]{摘 要}\textbf{:}}  %% 摘要 和  中图分类号 等宽设置  \quad  或者 \hphantom{键词} \phantom{键词} 或者 \makebox 
{\xiaowuhao 
\BODY
\vspace{0.1cm}
}

{\hei\xiaowuhao \makebox[\widthof{关键词}][s]{关键词}\textbf{:}}  \xiaowuhao \aaasCKeyword \vspace{0.1cm}

{\hei\xiaowuhao 中图分类号\textbf{:}} {\xiaowuhao \aaasCLCNo} \qquad { \hei\xiaowuhao 文献标识码\textbf{:}} \xiaowuhao \aaasDcode \qquad \qquad  {\hei\xiaowuhao 文章编号\textbf{:}} \aaasPaperNo

\vspace*{0.8cm}}
\end{center}
}

\def\aaasCLCNo{}
\newcommand{\CLCNo}[1]{%
    \def\aaasCLCNo{#1}
}

\def\aaasCKeyword{}
\newcommand{\CKeyword}[1]{%
    \def\aaasCKeyword{#1}
}

\def\aaasDcode{}
\newcommand{\Dcode}[1]{%
    \def\aaasDcode{#1}
}

\def\aaasPaperNo{}
\newcommand{\PaperNo}[1]{%
    \def\aaasPaperNo{#1}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%define the format like [1-2]
\makeatletter
\def\@compress@cite#1{%  % This is executed for each number
  \advance\@tempcnta\@ne % Now \@tempcnta is one more than the previous number
  \ifnum #1=\@tempcnta   % Number follows previous--hold on to it
        \def\@h@ld{\citedash \citeform{#1}}%
  \else   %  non-successor -- dump what's held and do this one
     \@h@ld \@citea \citeform{#1}%
     \let\@h@ld\@empty
  \fi \@tempcnta#1\let\@citea\citepunct
} \makeatother
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\citedash}{-}  
\newcommand{\citeAAAS}[1]{%
 \!\textsuperscript{\cite{#1}}%
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 首页页眉页脚定义
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\fancypagestyle{plain}{ \fancyhf{}\vspace{10pt}
\lhead{\vspace{0.44cm}
{
{\CJKfamily{hei}\xiaowuhao 航\ \ 空\ \ 学\ \ 报}\\
{{\ArialFont \xiaowuhao Acta Aeronautica et Astronautica Sinica}}
}
}
\chead{}
\rhead{{\ArialFont \xiaowuhao Jan. 25 2017 Vol.38 No.X:}\\
{\ArialFont \xiaowuhao ISSN 1000-6893 CN 11-1929/V}}
\lfoot{}
\cfoot{}
\rfoot{}
\renewcommand{\headrule}{%
\hrule height0.5pt width \headwidth \vskip0.5pt%
\hrule height0.5pt width \headwidth \vskip-2pt}}
%\renewcommand{\footrulewidth}{0.4pt}
%\setlength{\hoffset}{0.1pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy} 
\renewcommand{\headrule}{%
\hrule height0.5pt width \headwidth \vskip1pt%
\hrule height0.5pt width \headwidth \vskip-2pt}
\fancyhf{}
% \fancyhead[RE]{{\footnotesize 第~xx~卷~~~}} 
\fancyhead[CE,CO]{{\CJKfamily{hei}\xiaowuhao 航\quad 空\quad 学\quad 报}}
\fancyhead[LE,RO]{}
% \fancyhead[LO]{{\footnotesize ~~~第~x~期}}
\lfoot{}
\cfoot{~~~\xiaowuhao XXXXXX-\thepage ~~~}
\rfoot{}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 标题居左 https://tex.stackexchange.com/questions/282514/title-author-and-email-flush-left-alignment
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{etoolbox}
\makeatletter
\patchcmd{\@maketitle}{\begin{center}}{\begin{flushleft}}{}{}
\patchcmd{\@maketitle}{\begin{tabular}[t]{c}}{\begin{tabular}[t]{@{}l}}{}{}
\patchcmd{\@maketitle}{\end{center}}{\end{flushleft}}{}{}
\makeatother
