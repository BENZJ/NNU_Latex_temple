%%
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{nenuthesis}
[2014/05/06 0.0.3 Northeast Normal University Thesis Template]
\def\nenuthesis{\textsc{NenuThesis}}
\def\version{0.0.3}

% \LoadClass[a4paper,titlepage,11pt,twoside,openany]{book}
\LoadClass[cs4size,fancyhdr,fntef,openright,cap, oneside, AutoFakeBold]{ctexbook}

\newif\ifnenuIsZhCN
\DeclareOption{zhcn}{\nenuIsZhCNtrue}

\ExecuteOptions{zhcn}
\ProcessOptions\relax

\RequirePackage{ifpdf,ifxetex}

% Packages -----------------------------------------------
\RequirePackage[utf8]{inputenc}
\RequirePackage[usenames]{color}
\RequirePackage{fancyhdr}
\RequirePackage{nomencl}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{url}
\urlstyle{tt}

\RequirePackage{hyperref}
\hypersetup{
	unicode=false,
	CJKbookmarks=true, 
%	bookmarks=true,
    bookmarksnumbered=true,
	bookmarksopen=true, 
	bookmarksopenlevel=1, 
	breaklinks=true,
	colorlinks=false, 
	plainpages=false, 
%	pdfpagelabels, 
	pdfborder=0 0 0,
	linktocpage=false,
	linkcolor=black, 
	anchorcolor=black, 
	citecolor=black
}

\bibliographystyle{plain}

\RequirePackage{lscape}
\RequirePackage{graphicx}

%% 表格
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{threeparttable}
\RequirePackage{tabularx}
\RequirePackage{slashbox}
\RequirePackage{multirow}
\RequirePackage{dcolumn}
\RequirePackage{colortbl}
\RequirePackage{array}

\RequirePackage{ulem}
\RequirePackage{ifthen}
\RequirePackage{caption}
\RequirePackage{subfig}
\RequirePackage{float}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{commath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}


%% 页边距:上 2.5cm,下 2.5cm,左 3cm,右 2.5cm;装订线位置:左侧,1.5cm。
\RequirePackage[top=2.5cm,bottom=2.5cm,left=3.0cm,right=2.5cm,includehead,includefoot]{geometry}

%% 是否需要pdf交叉链接？
%\RequirePackage[bookmarks,raiselinks,pageanchor,hyperindex]{hyperref}
\RequirePackage{natbib}
\RequirePackage{titlesec}
\RequirePackage{titletoc}

% 字体设置 -----------------------------------------------
%% 中文字体太多都有版权了\ldots

\RequirePackage{fontspec}
\setmainfont{TeX Gyre Termes}	%相当于MS Word中的Times new Roman。
\setsansfont{TeX Gyre Heros}	%相当于MS Word中的Helvetica。
\setmonofont{TeX Gyre Cursor}	%相当于MS Word中的Curier。
\RequirePackage{xeCJK}

%调整行间距
\RequirePackage{setspace}

%---------- 版面设置 ----------
% 纸张大小按照A4paper
\setlength\paperheight{297mm}
\setlength\paperwidth {210mm}

\RequirePackage{xunicode,xltxtra,fontspec}
% \RequirePackage[CJKnumber,CJKtextspaces,CJKmathspaces,slantfont,boldfont]{xeCJK}
\RequirePackage{xeCJK}
% xeCJK 环境初始化
\xeCJKsetup{xeCJKactive=true}

\punctstyle{kaiming}

% \setCJKmainfont[BoldFont={SimSun}, ItalicFont={SimSun}]{SimSun}
%\setCJKsansfont{Droid Sans Fallback}
% \setCJKsansfont{Microsoft YaHei}


%%% 正文主题的字体
\setCJKsansfont{Adobe Heiti Std}
\setCJKmonofont{Adobe Song Std}
\setCJKfamilyfont{song}{Adobe Song Std}
%%%

\setCJKfamilyfont{lishu}{LiSu}
\setCJKfamilyfont{zhLiSu}[AutoFakeBold = {4.17}]{LiSu}
% \renewcommand*{\zhLiSu}{\CJKfamily{zhLiSu}}
% \setCJKfamilyfont{hei}{Microsoft YaHei}
\setCJKfamilyfont{hei}{Adobe Heiti Std}
\setCJKfamilyfont{fs}{Adobe Fangsong Std}
\setCJKfamilyfont{kai}{Adobe Kaiti Std}
\setCJKfamilyfont{li}{LiSu} % todo: 用隶书字体代替
\setCJKfamilyfont{you}{SimSun} % todo: 用幼圆字体代替

% 好像是用来设置全文罗马字体和主要字体的
% \setmainfont{SimSun}
% \setsansfont{SimSun}
% \setmonofont{SimSun}


% 标点处理格式 行末半角 所有标点占一个汉字宽度 行首行末对齐
\xeCJKEditPunctStyle{hangmobanjiao}{enabled-global-setting = false}

% 设置中文正文字体为仿宋，加粗为黑体，斜体为楷体
% 除非您使用windows操作系统编译论文，否则强烈不推荐使用微软系的字体
\setCJKmainfont[BoldFont={Adobe Heiti Std}, ItalicFont={Adobe Kaiti Std}]{Adobe Fangsong Std}
%\setCJKfallbackfamilyfont{\CJKrmdefault}[BoldFont={Adobe Heiti Std}, ItalicFont={Adobe Kaiti Std}]{Adobe Fangsong Std}
% 由于汉字都是等宽的，等宽字体通常应用在代码段或verbatim环境中，故这里选用黑体后更改。
%\setCJKmonofont{Noto Sans CJK SC} % 十分优雅美观的思源黑体
\setCJKmonofont{Adobe Heiti Std}



\let\songti\relax
\newCJKfontfamily\songti{Adobe Song Std}[AutoFakeBold]

\let\heiti\relax
\newCJKfontfamily\heiti{Adobe Heiti Std}[AutoFakeBold]

% \newcommand{\song}{\CJKfamily{song}}    % 宋体
% \def\songti{\song}

% \newcommand{\fs}{\CJKfamily{fs}}        % 仿宋体
% \def\fangsong{\fs}

\newcommand{\kai}{\CJKfamily{kai}}      % 楷体
\def\kaishu{\kai}

\newcommand{\hei}{\CJKfamily{hei}}      % 黑体
\def\heiti{\hei}

% \newcommand{\li}{\CJKfamily{li}}        % 隶书
% \def\lishu{\li}

% \newcommand{\you}{\CJKfamily{you}}      % 幼圆
% \def\youyuan{\you}


% %% 字号 ----------------------------------------
\newlength\nenu@linespace
\newcommand{\nenu@choosefont}[2]{%
   \setlength{\nenu@linespace}{#2*\real{#1}}%
   \fontsize{#2}{\nenu@linespace}\selectfont}
\def\nenu@define@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][\baselinestretch]{%
    \nenu@choosefont{##1}{#2}}}

% % Pre format ---------------------------------------
% % 设置一些信息（学生，导师，题目等等）
% title
\DeclareRobustCommand{\nstitlec}{}
\DeclareRobustCommand{\nstitlee}{}
\DeclareRobustCommand{\nstitle}[2]{
  \renewcommand{\nstitlec}{#1}
  \renewcommand{\nstitlee}{#2}
}

% author
\DeclareRobustCommand{\nsauthornamec}{}
\DeclareRobustCommand{\nsauthornamee}{}
\DeclareRobustCommand{\nsauthorid}{}
\DeclareRobustCommand{\nsauthor}[3]{
  \renewcommand{\nsauthornamec}{#1}
  \renewcommand{\nsauthornamee}{#2}
  \renewcommand{\nsauthorid}{#3}
}

% mentor teacher
\DeclareRobustCommand{\nsmentorc}{}
\DeclareRobustCommand{\nsmentore}{}
\DeclareRobustCommand{\nsmentortitle}{}
\DeclareRobustCommand{\nsmentor}[3]{
	\renewcommand{\nsmentorc}{#1}
	\renewcommand{\nsmentore}{#2}
	\renewcommand{\nsmentortitle}{#3}
}

% 学位类型定义
\DeclareRobustCommand{\nstype}[1]{
	\renewcommand{\nstype}{#1}
}
% 学位领域
\DeclareRobustCommand{\nsrange}[1]{
	\renewcommand{\nsrange}{#1}
}

% grade
%\DeclareRobustCommand{\nsgrade}{}
\DeclareRobustCommand{\nsgrade}[1]{
	\renewcommand{\nsgrade}{#1}
}


%  major 
\DeclareRobustCommand{\nsmajorc}{}
\DeclareRobustCommand{\nsmajore}{}
\DeclareRobustCommand{\nsmajor}[2]{
	\renewcommand{\nsmajorc}{#1}
	\renewcommand{\nsmajore}{#2}
}

% college
\DeclareRobustCommand{\nscollegec}{}
\DeclareRobustCommand{\nscollegee}{}
\DeclareRobustCommand{\nscollege}[2]{
	\renewcommand{\nscollegec}{#1}
	\renewcommand{\nscollegee}{#2}
}

% make date
\DeclareRobustCommand{\nsdateyear}{}
\DeclareRobustCommand{\nsdatemonth}{}
\DeclareRobustCommand{\nsdate}[2]{
	\renewcommand{\nsdateyear}{#1}
	\renewcommand{\nsdatemonth}{#2}
}

\DeclareRobustCommand{\nsheadc}{}
\DeclareRobustCommand{\nshead}[1]{
	\renewcommand{\nsheadc}{#1}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%目录设置%%%%%%%%
% \CTEXsetup[format={\zihao{-4}\songti\bf}]{chapter}
\CTEXsetup[name={,、}]{chapter}   
\CTEXsetup[number={ （\chinese{section}）}]{section} 
\CTEXsetup[number={ \arabic{subsection}.}]{subsection}  
% \CTEXsetup[format={\Large\bfseries}]{section}
% \CTEXsetup[name={第,章}]{section}                            %设置章标题字号为Large，居左
% \CTEXsetup[number={ \chinese{section}}]{section}                      %section形式改为一,二,三,..
% \CTEXsetup[name={（,）}]{subsection}                                 
% \CTEXsetup[number={\chinese{subsection}}]{subsection}                %subsection形式改为（一,二,三,...）
% \CTEXsetup[number=\arabic{subsubsection}]{subsubsection}             %subsubsection形式改为1，2，3，...


\dottedcontents{chapter}[2em]{\normalsize}{2.0em}{4pt}
\dottedcontents{section}[3.0em]{\normalsize}{2.0em}{4pt}
\dottedcontents{subsection}[4.0em]{\normalsize}{2.0em}{4pt}

\setcounter{secnumdepth}{4}
% \setcounter{tocdepth}{3}
% \titlecontents{section}
%               [3cm]
%               {\bf \large}%
%               {\contentslabel{2.5em}}%
%               {}%
%               {\titlerule*[0.5pc]{$\cdot$}\contentspage\hspace*{3cm}}%

\titleformat{\chapter}[hang]{\centering\zihao{3}\heiti}{\chinese{chapter}、}{1em}{}{}
\titlespacing{\chapter}{0pt}{0.2\baselineskip}{0.2\baselineskip}
\titlecontents{chapter}[]{\zihao{-4}\heiti}%
{\thecontentslabel}{}{\titlerule*[5pt]{.}\contentspage}

\titleformat{\section}[hang]%
  {\zihao{4}\heiti}{（\chinese{section}）}{1em}{}{}
\titlespacing{\section}%
  {0pt}{0.2\baselineskip}{0.2\baselineskip}

\titlecontents{section}[]{\zihao{-4}\songti}%
{\hspace{1em}\thecontentslabel}{}{\titlerule*[5pt]{.}\contentspage}

\titleformat{\subsection}[hang]%
  {\zihao{-4}\bf\songti}{\arabic{subsection}}{1em}{}{}
\titlespacing{\subsection}%
  {0pt}{0.1\baselineskip}{0.1\baselineskip}
\titlecontents{subsection}[]{}%
{\hspace{2em}\thecontentslabel}{}{\titlerule*[5pt]{.}\contentspage}

% \titleformat{\subsubsection}[hang]{\zihao{-4}}{\thesubsubsection}{1em}{}{}
% \titlespacing{\subsubsection}{0pt}{0.0\baselineskip}{0.0\baselineskip}

%%%%%%%%目录设置结束%%%%%%%%

% Other settings ------------------------------------------------
%% 行距
\linespread{1.5} 

\newcommand{\pozhehao}{\kern0.3ex\rule[0.8ex]{2em}{0.1ex}\kern0.3ex}

%%摘要页面不要页眉只要页脚页码
\def\ps@nnu@plain{%
	\let\@oddhead\@empty%
	\let\@evenhead\@empty%
	\def\@oddfoot{\hfil\zihao{-5}\thepage\hfil}%
	\let\@evenfoot=\@oddfoot}
%%

% 页眉和页脚 ---------------------------------------
\RequirePackage{fancyhdr}
%% clear all fields
\fancyhead{} 
\fancyfoot{}

%% report和book都是chapter首頁默认沒有頁眉
%% 想办法重载plain样式
\makeatletter
\let\ps@plain\relax
\let\ps@plain=\ps@fancy
\makeatother

%% 页眉：
%% 论文题目，宋体五号；距页上边1.5cm
%% @TODO 单面打印时，页眉内容靠左边（为了环保，暂时不管）
%% 双面打印时，页眉内容奇数页靠左，偶数靠右
\fancyhead[CO,CE]{\songti \zihao{5} \nsheadc}
%% 页脚：
%% 页码，字体 Times New Roman，五号加黑
%% 奇数页右侧,偶数页在左侧,页脚距页下边 1.5cm,
\fancyfoot[CE,CO]{ \textbf{\thepage}}

\renewcommand{\headrulewidth}{0.4pt} 
\renewcommand{\footrulewidth}{0.4pt}

\pagestyle{fancy}

% 本地化 -------------------------------------------
\ifnenuIsZhCN
    \newtheorem{assumption}{假设}[chapter]
    \newtheorem{definition}{定义}[chapter]
    \newtheorem{proposition}{命题}[chapter]
    \newtheorem{lemma}{引理}[chapter]
    \newtheorem{theorem}{定理}[chapter]
    \newtheorem{axiom}{公理}[chapter]
    \newtheorem{corollary}{推论}[chapter]
    \newtheorem{exercise}{练习}[chapter]
    \newtheorem{example}{例}[chapter]
    \newtheorem{remark}{注释}[chapter]
    \newtheorem{problem}{问题}[chapter]
    \newtheorem{conjecture}{猜想}[chapter]

    \renewcommand\contentsname{\centerline{\zihao{3} \heiti 目\hspace{2em}录}}
    \renewcommand\listfigurename{插图索引}
    \renewcommand\listtablename{表格索引}
    \newcommand\listequationname{公式索引}
    \newcommand\equationname{公式}
    \renewcommand\bibname{参考文献}
    \renewcommand\indexname{索引}
    \renewcommand\figurename{图}
    \renewcommand\tablename{表}
\else
    \newtheorem{assumption}{Assumption}[chapter]
    \newtheorem{definition}{Definition}[chapter]
    \newtheorem{proposition}{Proposition}[chapter]
    \newtheorem{lemma}{Lemma}[chapter]
    \newtheorem{theorem}{Theorem}[chapter]
    \newtheorem{axiom}{Axiom}[chapter]
    \newtheorem{corollary}{Corollary}[chapter]
    \newtheorem{exercise}{Exercise}[chapter]
    \newtheorem{example}{Example}[chapter]
    \newtheorem{remark}{Remark}[chapter]
    \newtheorem{problem}{Problem}[chapter]
    \newtheorem{conjecture}{Conjecture}[chapter]
\fi


\endinput
