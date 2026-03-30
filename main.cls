% ============================================================
% 国家开放大学学士学位论文 LaTeX 文档类模板
% ============================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{main}[2026/03/11 v1.0 National Open University Thesis Template]

% ------------------------------------------------------------
% 选项处理
% ------------------------------------------------------------
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ExecuteOptions{}
\ProcessOptions\relax

% ------------------------------------------------------------
% 基础文档类 (ctexart 提供中文支持，不分章节分页)
% ------------------------------------------------------------
\LoadClass[UTF8,a4paper,14pt]{ctexart}

% ------------------------------------------------------------
% 页面设置
% ------------------------------------------------------------
\RequirePackage{geometry}
\geometry{
    paperwidth=210mm,
    paperheight=297mm,
    left=2.8cm,
    right=2cm,
    top=2.5cm,
    bottom=2cm,
    headheight=15pt,
    headsep=20pt,
    footskip=30pt
}

% ------------------------------------------------------------
% 基础宏包
% ------------------------------------------------------------
\RequirePackage{xeCJK}
\RequirePackage{setspace}           % 行距设置
\RequirePackage{fancyhdr}           % 页眉页脚
\RequirePackage{titlesec}           % 标题格式
\RequirePackage{tocloft}            % 目录格式
\RequirePackage{graphicx}           % 图片支持
\RequirePackage{pdfpages}           % 插入PDF页面
\RequirePackage{amsmath,amssymb,amsfonts} % 数学公式
\RequirePackage{booktabs}           % 表格
\RequirePackage{longtable}          % 跨页表格
\RequirePackage{multirow}           % 表格多行合并
\RequirePackage{array}              % 表格增强
\RequirePackage{float}              % 浮动体控制
\RequirePackage{caption}            % 图表标题
\RequirePackage{subcaption}         % 子图标题
\RequirePackage{hyperref}           % 超链接
\RequirePackage{enumitem}           % 列表环境
\RequirePackage{xcolor}             % 颜色
\RequirePackage{listings}           % 代码 listings

% ------------------------------------------------------------
% 参考文献设置
% ------------------------------------------------------------
\RequirePackage[sort&compress,numbers,super]{natbib}
\renewcommand{\bibsection}{\section*{\centering\refname}}

% ------------------------------------------------------------
% 超链接设置
% ------------------------------------------------------------
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    citecolor=black,
    urlcolor=blue,
    bookmarksopen=true,
    bookmarksnumbered=true,
    pdfborder={0 0 0}
}

% ------------------------------------------------------------
% 字体设置
% ------------------------------------------------------------
% 中文字体：宋体(正文)、黑体(标题)
\setCJKmainfont{SimSun}[AutoFakeBold=true,AutoFakeSlant=true]     % 宋体 - 正文
\setCJKsansfont{SimHei}[AutoFakeBold=true]                         % 黑体 - 标题
\setCJKmonofont{SimSun}                                             % 宋体 - 等宽备选

% 英文字体：Times New Roman
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}

% ------------------------------------------------------------
% 字号设置 (pt)
% ------------------------------------------------------------
\newcommand{\chuhao}{\fontsize{42pt}{50.4pt}\selectfont}      % 初号
\newcommand{\xiaochu}{\fontsize{36pt}{43.2pt}\selectfont}    % 小初
\newcommand{\yihao}{\fontsize{26pt}{31.2pt}\selectfont}      % 一号
\newcommand{\xiaoyi}{\fontsize{24pt}{28.8pt}\selectfont}     % 小一
\newcommand{\erhao}{\fontsize{22pt}{26.4pt}\selectfont}      % 二号
\newcommand{\xiaoer}{\fontsize{18pt}{21.6pt}\selectfont}     % 小二
\newcommand{\sanhao}{\fontsize{16pt}{19.2pt}\selectfont}     % 三号
\newcommand{\xiaosan}{\fontsize{15pt}{18pt}\selectfont}      % 小三
\newcommand{\sihao}{\fontsize{14pt}{16.8pt}\selectfont}      % 四号
\newcommand{\xiaosi}{\fontsize{12pt}{14.4pt}\selectfont}     % 小四
\newcommand{\wuhao}{\fontsize{10.5pt}{12.6pt}\selectfont}    % 五号
\newcommand{\xiaowu}{\fontsize{9pt}{10.8pt}\selectfont}      % 小五

% ------------------------------------------------------------
% 行距设置
% ------------------------------------------------------------
\setstretch{1.5}    % 1.5倍行距

% ------------------------------------------------------------
% 章节标题格式设置
% 一级标题：黑体 小二 左对齐 格式：一、xxx
% 二级标题：黑体 小三 左对齐 格式：（一）xxx
% 三级标题：黑体 小四 缩进两个字符 格式：1. xxx
% ------------------------------------------------------------
\ctexset{
    section = {
        format = \CJKfamily{zhhei}\xiaoer\bfseries,
        number = \chinese{section}、,
        beforeskip = 12pt,
        afterskip = 6pt
    },
    subsection = {
        format = \CJKfamily{zhhei}\xiaosan\bfseries,
        number = （\chinese{subsection}）,
        beforeskip = 6pt,
        afterskip = 3pt
    },
    subsubsection = {
        format = \CJKfamily{zhhei}\xiaosi\bfseries,
        number = \arabic{subsubsection}. ,
        beforeskip = 6pt,
        afterskip = 3pt,
        indent = 2em
    }
}

% ------------------------------------------------------------
% 目录格式设置
% ------------------------------------------------------------
\renewcommand{\cfttoctitlefont}{\hfill\xiaoer\CJKfamily{zhhei}\bfseries}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\contentsname}{目\quad\quad 录}
\setlength{\cftaftertoctitleskip}{40pt}
\renewcommand{\cftsecfont}{\xiaosi}
\renewcommand{\cftsubsecfont}{\xiaosi}
\renewcommand{\cftsubsubsecfont}{\xiaosi}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\setlength{\cftbeforesecskip}{3pt}
\setlength{\cftbeforesubsecskip}{3pt}
\setlength{\cftbeforesubsubsecskip}{3pt}

% ------------------------------------------------------------
% 页眉页脚设置
% ------------------------------------------------------------
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% ------------------------------------------------------------
% 图表标题格式
% ------------------------------------------------------------
\captionsetup{
    font={small},
    labelfont={bf},
    labelsep=quad,
    skip=10pt
}
\captionsetup[figure]{name={图}}
\captionsetup[table]{name={表}}

% ------------------------------------------------------------
% 图表编号格式: 章-序号 (使用section作为章)
% ------------------------------------------------------------
\renewcommand{\thefigure}{\thesection-\arabic{figure}}
\renewcommand{\thetable}{\thesection-\arabic{table}}
\renewcommand{\theequation}{\thesection-\arabic{equation}}
% 重置计数器在文档类中通过其他方式处理

% ------------------------------------------------------------
% 列表环境设置
% ------------------------------------------------------------
\setlist[enumerate]{
    label=(\arabic*),
    leftmargin=2em,
    itemsep=0pt,
    parsep=0pt
}
\setlist[itemize]{
    leftmargin=2em,
    itemsep=0pt,
    parsep=0pt
}

% ------------------------------------------------------------
% 代码环境设置
% ------------------------------------------------------------
\lstset{
    basicstyle=\small\ttfamily,
    keywordstyle=\color{blue}\bfseries,
    commentstyle=\color{gray},
    stringstyle=\color{red},
    numbers=left,
    numberstyle=\tiny,
    numbersep=8pt,
    frame=single,
    breaklines=true,
    showstringspaces=false,
    tabsize=4,
    captionpos=b
}

% ------------------------------------------------------------
% 数学定理环境
% ------------------------------------------------------------
\RequirePackage{amsthm}
\theoremstyle{definition}
\newtheorem{definition}{定义}[section]
\newtheorem{theorem}{定理}[section]
\newtheorem{lemma}{引理}[section]
\newtheorem{corollary}{推论}[section]
\newtheorem{proposition}{命题}[section]
\newtheorem{example}{例}[section]
\newtheorem{remark}{注}[section]

% ------------------------------------------------------------
% 封面信息命令
% ------------------------------------------------------------
\newcommand{\university}[1]{\gdef\@university{#1}}
\newcommand{\college}[1]{\gdef\@college{#1}}
\newcommand{\major}[1]{\gdef\@major{#1}}
\newcommand{\advisor}[1]{\gdef\@advisor{#1}}
\newcommand{\studentid}[1]{\gdef\@studentid{#1}}
\newcommand{\degree}[1]{\gdef\@degree{#1}}
\newcommand{\submitdate}[1]{\gdef\@submitdate{#1}}
\newcommand{\thesistitle}[1]{\gdef\@thesistitle{#1}}
\newcommand{\thesisauthor}[1]{\gdef\@thesisauthor{#1}}
\newcommand{\branch}[1]{\gdef\@branch{#1}}
\newcommand{\learningcenter}[1]{\gdef\@learningcenter{#1}}
\newcommand{\enrollmentdate}[1]{\gdef\@enrollmentdate{#1}}

\university{国家开放大学}
\college{XX学院}
\major{XX专业}
\advisor{XXX}
\studentid{20XXXXXXXX}
\degree{学士学位论文}
\submitdate{2026年3月}
\thesistitle{论文题目}
\thesisauthor{作者姓名}
\branch{}
\learningcenter{}
\enrollmentdate{}

% ------------------------------------------------------------
% 封面生成命令
% ------------------------------------------------------------
\newcommand{\makecover}{%
    \begin{titlepage}
        \centering
        \vspace*{3cm}
        
        % 学校名称
        {\yihao\CJKfamily{zhsong}\@university}
        
        \vspace{1.5cm}
        
        % 学位类型
        {\erhao\CJKfamily{zhsong}\@degree}
        
        \vspace{3.5cm}
        
        % 论文题目
        {\xiaosi\CJKfamily{zhsong}题目：\@thesistitle}
        
        \vspace{3.5cm}
        
        % 作者信息
        {\xiaosi
        \begin{tabular}{r@{\hspace{0.5em}}l}
            \CJKfamily{zhsong}分部： & \CJKfamily{zhsong}\@branch \\[0.8cm]
            \CJKfamily{zhsong}学习中心： & \CJKfamily{zhsong}\@learningcenter \\[0.8cm]
            \CJKfamily{zhsong}专业： & \CJKfamily{zhsong}\@major \\[0.8cm]
            \CJKfamily{zhsong}入学时间： & \CJKfamily{zhsong}\@enrollmentdate \\[0.8cm]
            \CJKfamily{zhsong}学号： & \CJKfamily{zhsong}\@studentid \\[0.8cm]
            \CJKfamily{zhsong}姓名： & \CJKfamily{zhsong}\@thesisauthor \\[0.8cm]
            \CJKfamily{zhsong}指导教师： & \CJKfamily{zhsong}\@advisor \\[0.8cm]
        \end{tabular}
        }
        
        \vfill
        
        % 提交日期
        {\xiaosi\CJKfamily{zhsong}论文完成日期:\hspace{2em}\underline{\hspace{3cm}}年\underline{\hspace{1.5cm}}月}
        
        \vspace{2cm}
    \end{titlepage}
}

% ============================================================
% 文档类结束
% ============================================================
