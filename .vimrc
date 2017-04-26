"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"作者：Domi
"创建日期：2014-8-17
"使用新版的vundle安装插件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"============================
"  General 基础设置
"============================
" ==> 全局设置
set sw=4
set ts=4
set et
set smarttab
set smartindent
set lbr
set fo+=mB
set sm
set selection=inclusive
set wildmenu
set mousemodel=popup
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
set go=             " 不要图形按钮
set nocompatible  	" 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set autoread        " 文件修改之后自动载入
set autowrite		" 自动保存
set backspace=indent,eol,start "解决vim insert模式下退格键无法使用的问题 参见：http://www.cnblogs.com/shaojun/archive/2011/01/28/1946632.html


"============================
" 插件列表
"============================
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ==> 插件
Plugin 'gmarik/Vundle.vim'

" ==> The NERD tree 以树形结构浏览文件夹中的文件
Plugin 'scrooloose/nerdtree'

" ==> go-vim
Plugin 'fatih/vim-go'

" ==> go-vim molokai
Plugin 'fatih/molokai'

" ==> 实时代码补全提示
Plugin 'Shougo/neocomplete.vim'

" ==> golang 代码模板
Plugin 'SirVer/ultisnips'

" ==> Tagbar 比 taglist 更现代的代码结构浏览工具
Plugin 'majutsushi/tagbar'

" ==> 括号显示增强
Plugin 'kien/rainbow_parentheses.vim'

" ==> "快速 加减注释
Plugin 'scrooloose/nerdcommenter'

" ==>" 输入引号,括号时,自动补全
Plugin 'Raimondi/delimitMate'

" ==> 文件查找
Plugin 'kien/ctrlp.vim'

" ==> 主题配色插件,废弃，使用fatih/molokai
"Plugin 'altercation/vim-colors-solarized'

" ==> 标签导航 要装ctags(推荐使用tagbar)
" ctags -R --c++-kinds=+p --fields=+iaS --extra=+q  c++ 使用的ctag
"Plugin 'vim-scripts/taglist.vim'                                                                                                                 

" ==> Lua语法
"Plugin 'xolox/vim-lua-inspect'
"Plugin 'xolox/vim-misc'

" ==> AutoComplPop 自动补全
"Plugin 'vim-scripts/AutoComplPop' " 与neocomplete有点冲突

" ==> L9
Plugin 'L9'

" ==> OmniCppComplete 自动补全
"Plugin 'vim-scripts/OmniCppComplete'

" ==> vim-powerline vim状态栏
Plugin 'Lokaltog/vim-powerline'

" ==> svn 插件
Plugin 'vim-scripts/vcscommand.vim'

" ==> easygrep
Plugin 'dkprice/vim-easygrep'

" ==> asyncrun
Plugin 'skywind3000/asyncrun.vim'

call vundle#end()
filetype plugin indent on " 启动自动补全


"============================
"  其他设置
"============================
" ==> history存储长度
set history=2000

" ==> 搜索设置
"搜索逐字符高亮
set hlsearch	" 高亮search命中的文本
set incsearch	" 随着键入即时搜索
set ignorecase	" 搜索时忽略大小写
set smartcase   " 有一个或以上大写字母时仍大小写敏感

"==> 语言设置
"set encoding=utf-8
"set langmenu=zh_CN.UTF-8
"set helplang=cn

" ==> 显示中文帮助
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif
set fileencodings=utf-8,gb18030,utf-16,big5

" ==> 文件类型
"filetype on					" 侦测文件类型
filetype plugin on				" 载入文件类型插件
filetype indent on				" 针对不同的文件类型采用不同的缩进格式
"filetype plugin indent on		" 启动自动补全
set viminfo+=!					" 保存全局变量
set iskeyword+=_,$,@,%,#,-		" 带有如下符号的单词不要被换行分割

" ==> 开启语法高亮
syntax enable
syntax on


"============================
"  显示相关
"============================
" ==> 显示行号
set number
set nowrap                    " 取消换行。

" ==> 突出显示当前行等
set cursorcolumn			" 突出显示当前列
set cursorline              " 突出显示当前行

" ==> 括号配对情况
set showmatch
"匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1

" ==> 主题相关
set background=dark
"color ron     		" 设置背景主题
"color evening
color desert     	" 设置背景主题
"color torte     	" 设置背景主题

" ==> 代码折叠
set foldenable
set foldmethod=indent
set foldlevel=99
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}

" ==> 缩进相关
set autoindent		" 自动缩进
set cindent
set tabstop=4		" Tab键的宽度
set softtabstop=4	" 统一缩进为4
set shiftwidth=4
set noexpandtab		" 不要用空格代替制表符
"set expandtab      " 将Tab自动转化成空格 
set smarttab		" 在行和段开始处使用制表符
"nmap tt :%s/\t/    /g<CR>	"将tab替换为空格
set pastetoggle=<F10> "解决vim复制缩进的问题，参考：http://my.oschina.net/joshuazhan/blog/122539

" ==> 状态行
autocmd InsertEnter * se cul    " 用浅色高亮当前行  
set ruler           			" 显示标尺  
set showcmd         			" 输入的命令显示出来，看的清楚些
set showmode
set scrolloff=3     			" 光标移动到buffer的顶部和底部时保持3行距离  
"set statusline=%F%m%r%h%w\ [Format=%{&ff}]\ [Type=%Y]\[Pos=%l,%v][%p%%]\[Time=%{strftime(\"%Y/%m/%d\ -\ %H:%M\")}]   "状态行显示的内容  
set statusline=%F%m%r%h%w\ [Type=%Y]\[Pos=%l,%v][%p%%]   "状态行显示的内容  
set laststatus=2    			" 启动显示状态行(1),总是显示状态行(2)
set cmdheight=2  				" 总是显示状态行
set magic                   	" 设置魔术
set guioptions-=T           	" 隐藏工具栏
set guioptions-=m           	" 隐藏菜单栏


"============================
" 实用设置
"============================
" ==> 选择模式
set mouse-=a           		" 鼠标暂不启用
set selection=exclusive
set selectmode=mouse,key

" ==> NERDTree
if has("autocmd")
	autocmd BufReadPost *
				\ if line("'\"") > 0 && line("'\"") <= line("$") |
				\   exe "normal g`\"" |
				\ endif
endif
"启动vim时自动打开NERDTree
"autocmd vimenter * NERDTree
"当打开vim且没有文件时自动打开NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ==> quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
set cscopequickfix=s-,c-,d-,i-,t-,e-

" ==> 共享剪贴板
"set clipboard+=unnamed 

" ==> 禁止生成临时文件,视情况自己改
set nobackup
set noswapfile

" ==> 声音、提示设置
set noeb		" 去掉输入错误的提示声音
set confirm		" 在处理未保存或只读文件的时候，弹出确认

" ==> 代码补全 
set completeopt=preview,menu 

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\			" 在被分割的窗口间显示空白，便于阅读
set scrolloff=3									" 光标移动到buffer的顶部和底部时保持3行距离
set fillchars+=stl:\ ,stlnc:\


"============================
" 其他设置
"============================
autocmd! bufwritepost _vimrc source % 			" vimrc文件修改之后自动加载。 windows。
autocmd! bufwritepost .vimrc source % 			" vimrc文件修改之后自动加载。 linux。


"============================
" 新文件标题
"============================
""定义函数SetTitle，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.py,*.lua exec ":call SetTitle()" 
func! SetTitle() 
	"如果文件类型为.sh文件 
	if &filetype == 'sh' 
		call setline(1,"\#!/bin/bash") 
		call append(line("."), "") 
	elseif &filetype == "lua"
		call setline(1,"--$Id$")
		call append(line("."),"")
		"elseif &filetype == 'python'
		"call setline(1,"#!/usr/bin/env python")
		"call append(line("."),"# coding=utf-8")
		"call append(line(".")+1, "") 
		"    elseif &filetype == 'mkd'
		"        call setline(1,"<head><meta charset=\"UTF-8\"></head>")
	else 
		call setline(1, "/*************************************************************************") 
		call append(line("."), "	> File Name: ".expand("%")) 
		call append(line(".")+1, "	> Author: tangpf") 
		call append(line(".")+2, "	> Created Time: ".strftime("%c")) 
		call append(line(".")+3, " ************************************************************************/") 
		call append(line(".")+4, "")
	endif
	if &filetype == 'cpp'
		call append(line(".")+5, "#include<iostream>")
		call append(line(".")+6, "using namespace std;")
		call append(line(".")+7, "")
	endif
	if &filetype == 'c'
		call append(line(".")+5, "#include<stdio.h>")
		call append(line(".")+6, "")
	endif
	"	if &filetype == 'java'
	"		call append(line(".")+6,"public class ".expand("%"))
	"		call append(line(".")+7,"")
	"	endif
	"新建文件后，自动定位到文件末尾
endfunc 
autocmd BufNewFile * normal G


"============================
" 快捷键
"============================
" ==> 常用快捷键
" ctrl+x关闭窗口快捷键
nmap <C-c> :close<CR>
"F11 上一个窗口(也可以使用 <C-w><Left>,但是不能滚动)
nmap <F11> <C-w>W
"F12 窗口切换
nmap <F12> <C-w>w
map <C-k><Up> :vsplit<CR><F12>

" ==> svn 快捷键
nmap <S-d> :VCSDiff<CR>
nmap <S-r> :VCSRevert<CR>
nmap <S-l> :VCSLog<CR>
nmap <S-u> :VCSUpdate<CR>
nmap <S-c> :VCSCommit<CR>i

" ==> F2 资源管理器
map <F2> :NERDTreeToggle<CR>

" ==> F4 Tagbar开关
let g:tagbar_ctags_bin = 'ctags'
nmap <F4> :TagbarToggle<CR>

" ==> C，C++ 按F5编译运行
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'java' 
		exec "!javac %" 
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!time python2.7 %"
	elseif &filetype == 'html'
		exec "!firefox % &"
	elseif &filetype == 'go'
		"exec "!go build %<"
		exec "!time go run %"
	elseif &filetype == 'mkd'
		exec "!~/.vim/markdown.pl % > %.html &"
		exec "!firefox %.html &"
	endif
endfunc

" ==> 代码格式优化化
map <F6> :call FormartSrc()<CR><CR>
"定义FormartSrc()
func! FormartSrc()
	exec "w"
	if &filetype == 'c'
		exec "!astyle --style=ansi -a --suffix=none %"
	elseif &filetype == 'cpp' || &filetype == 'hpp'
		exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
	elseif &filetype == 'perl'
		exec "!astyle --style=gnu --suffix=none %"
	elseif &filetype == 'py'||&filetype == 'python'
		exec "r !autopep8 -i --aggressive %"
	elseif &filetype == 'java'
		exec "!astyle --style=java --suffix=none %"
	elseif &filetype == 'jsp'
		exec "!astyle --style=gnu --suffix=none %"
	elseif &filetype == 'xml'
		exec "!astyle --style=gnu --suffix=none %"
	else
		exec "normal gg=G"
		return
	endif
	exec "e! %"
endfunc
"结束定义FormartSrc

" ==> F7 生成Tags文件
map <F7> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
":TlistUpdate<CR>  "不注释就接在上一行尾部，但是现在不用taglist插件了，就注释了

" ==> C,C++的调试
map <F8> :call Rungdb()<CR>
func! Rungdb()
	exec "w"
	exec "!g++ % -g -o %<"
	exec "!gdb ./%<"
endfunc


"============================
" 插件设置 
"============================
" ==> 括号显示增强 配置
let g:rbpt_colorpairs = [
			\ ['brown',       'RoyalBlue3'],
			\ ['Darkblue',    'SeaGreen3'],
			\ ['darkgray',    'DarkOrchid3'],
			\ ['darkgreen',   'firebrick3'],
			\ ['darkcyan',    'RoyalBlue3'],
			\ ['darkred',     'SeaGreen3'],
			\ ['darkmagenta', 'DarkOrchid3'],
			\ ['brown',       'firebrick3'],
			\ ['gray',        'RoyalBlue3'],
			\ ['black',       'SeaGreen3'],
			\ ['darkmagenta', 'DarkOrchid3'],
			\ ['Darkblue',    'firebrick3'],
			\ ['darkgreen',   'RoyalBlue3'],
			\ ['darkcyan',    'SeaGreen3'],
			\ ['darkred',     'DarkOrchid3'],
			\ ['red',         'firebrick3'],
			\ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" ==> 文件查找 配置
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

" ==> 配色主题 配置
"syntax enable
"colorscheme solarized			"暂时不使用这个主题
"let g:solarized_termcolors=256	"注意：命令行模式下要设置
"highlight Normal ctermfg=darkCyan ctermbg=yellow
"let g:solarized_termtrans=1
"let g:solarized_contrast="normal"
"let g:solarized_visibility="normal"

" ==> ctags 设置
"set tags=tags;/
"ctags"  
"========================="  
set tags+=~/tags/systags
"========================="
let Tlist_Ctags_Cmd="/usr/bin/ctags"
"nnoremap <silent> <F3> :TlistToggle<CR>
"let Tlist_Auto_Highlight_Tag = 1
"let Tlist_Auto_Open = 0
"let Tlist_Auto_Update = 1
"let Tlist_Close_On_Select = 0
"let Tlist_Compact_Format = 0
"let Tlist_Display_Prototype = 0
"let Tlist_Display_Tag_Scope = 1
"let Tlist_Enable_Fold_Column = 0
"let Tlist_Exit_OnlyWindow = 1
"let Tlist_File_Fold_Auto_Close = 0
"let Tlist_GainFocus_On_ToggleOpen = 1
"let Tlist_Hightlight_Tag_On_BufEnter = 1
"let Tlist_Inc_Winwidth = 0
"let Tlist_Max_Submenu_Items = 1
"let Tlist_Max_Tag_Length = 30
"let Tlist_Process_File_Always = 0
"let Tlist_Show_Menu = 1
"let Tlist_Show_One_File = 1
"let Tlist_Sort_Type = "order"
"let Tlist_Use_Horiz_Window = 0
"let Tlist_Use_Right_Window = 0
"let Tlist_WinWidth = 37

" ==> 自动补全 配置
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" ==> vim-go 配置
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
	\ }
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_build_constraints = 1
let g:molokai_original = 1 "molokai 配色主题
let g:rehash256 = 1
set t_Co=256
colorscheme molokai
"hi cursorline cterm=underline
"lightcyan 或者 darkred
hi CursorLine cterm=NONE ctermbg=239
" 实用mappings
"转到定义 (ds=水平分割窗口,dv=垂直分割窗口，dt=在本窗口中跳转)
au FileType go nmap <Leader>ds <Plug>(go-def-split)	 
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" ==> 实时代码补全提示
let g:neocomplete#enable_at_startup = 1 "实时代码补全

" ==> 自动补全 配置
"au BufNewFile,BufRead,BufEnter *.cpp,*.hpp 
"set omnifunc=omni#cpp#complete#Main
"set ofu=syntaxcomplete#Complete
"imap <silent> ` <C-X><C-O>`
"set completeopt=menu,menuone
"let OmniCpp_MayCompleteDot = 1 " autocomplete with .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
"let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
"let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype  in popup window
"let OmniCpp_GlobalScopeSearch=1
"let OmniCpp_DisplayMode=1
"let OmniCpp_DefaultNamespaces=["std"]

" ==> Tmux背景颜色设置
"set term=screen-256color

" ==> vim-powerline相关配置
set encoding=utf-8
set laststatus=2
"let g:Powerline_symbols = 'fancy'
"改变状态栏的分隔符
let g:Powerline_symbols = 'unicode' 

" ==> easygrep 插件设置（参考：http://www.jianshu.com/p/3fb1b2170540）
let g:EasyGrepMode = 2     " All:0, Open Buffers:1, TrackExt:2, 
let g:EasyGrepCommand = 0  " Use vimgrep:0, grepprg:1,使用vimgrep
let g:EasyGrepRecursive  = 1 " Recursive searching,递归搜索
let g:EasyGrepIgnoreCase = 1 " not ignorecase:0,大小写敏感
let g:EasyGrepJumpToMatch = 0 " 不要打开第一个匹配到的文件
let g:EasyGrepWindowPosition = "botright" " quickfix 显示位置
let g:EasyGrepFilesToExclude = "tags,*.bak,*~,cscope.*,.a,.o,.pyc"
