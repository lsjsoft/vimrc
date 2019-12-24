"设置编码,处理中文乱码,文件默认utf8编码
set fileencodings=utf-8,ucs-bom,cp936,big5
set encoding=UTF-8

" 不兼容vi，避免以前版本的bug和局限
set nocompatible

" 处理backspace键不能删除问题
set backspace=indent,eol,start

if has('unix')
  "设置默认配色方案
  colorscheme default
elseif has('win64')
  " win7
  colorscheme darkblue
elseif has('win32')
  " xp
  colorscheme blue
else
endif

" 显示行号
set nu
" 设置tabstop
set ts=2 sts=2 sw=2
" 自动缩进
set autoindent
" 用空格代替制表符
set expandtab

" 高亮当前行
set cursorline

" Markdown不自动预览
" let g:instant_markdown_autostart = 0

" -------------------- tagbar ---------------
" 设置tagbar的窗口宽度
let g:tagbar_width=30
" 映射Tagbar的快捷键,自动打开
map <F3> :TagbarToggle<CR>
map <F4> :NERDTreeToggle<CR>
" 编译运行
map <F5> :call CompileRunGcc()<CR>
map <F6> :MRU<CR>

" ----------------- 编译 ---------------
" 编译
func! CompileRunGcc()
    exec "w"
    exec "!clear"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'javascript'
		exec "!node %<"
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
    "    exec "!go build %<"
    "    exec "!time go run %"
         exec ":GoBuild"
         exec ":GoRun"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
	endif
endfunc


" -------------------- 插件声明 ------------
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" 一款文本对齐的插件，非常神奇
Plug 'junegunn/vim-easy-align'

" On-demand loading 按需加载
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" --------------- Vim美化 ----------------
" 好看的状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" --------------- 帮助系统 ----------------
" 中文帮助
Plug 'yianwillis/vimcdoc'

" --------------- Markdown ----------------
" Markdown实时预览
Plug 'suan/vim-instant-markdown'

" Bus Hound 抓包语法高亮显示
Plug 'jiftle/bushound-syntax'

" ------------------- go语言插件 -----------------
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'dgryski/vim-godef'


" ------------------ 窗口管理 配置成IDE ---------------
"  树状文件浏览器
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Buffer
Plug 'vim-scripts/bufexplorer.zip'
" 显示tag
Plug 'majutsushi/tagbar'
" 最近打开
Plug 'vim-scripts/mru.vim'

" 超级搜索，Buf,File等
Plug 'ctrlpvim/ctrlp.vim'
" 搜索文件内容
Plug 'tacahiroy/ctrlp-funky'

" 文件浏览器显示好看的图标
Plug 'ryanoasis/vim-devicons'
" 对图标进行美化
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" git状态显示
Plug 'Xuyuanp/nerdtree-git-plugin' 

" ----------- 批量注释 ---------------
Plug 'scrooloose/nerdcommenter'

" ------------ 主题配色 ----------------
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'liuchengxu/space-vim-theme'
Plug 'tomasiser/vim-code-dark'
Plug 'jdkanani/vim-material-theme'
Plug 'iCyMind/NeoSolarized'

" ---------------- 快捷代码块 --------------
" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'jiftle/vim-snippets-jiftle'

" Initialize plugin system
call plug#end()

" -------------- 解决YCM和UltiSnaps冲突 -----------------
"let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

