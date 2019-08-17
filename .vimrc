"设置编码,处理中文乱码,文件默认utf8编码
set fileencodings=utf-8,ucs-bom,cp936,big5

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
set expandtab

" 高亮当前行
set cursorline

" Markdown不自动预览
let g:instant_markdown_autostart = 0

" -------------------- tagbar ---------------
" 设置tagbar的窗口宽度
let g:tagbar_width=30
" 映射Tagbar的快捷键,按F8自动打开
map <F8> :TagbarToggle<CR>

" -------------------- 插件声明 ------------
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" 一款文本对齐的插件，非常神奇
Plug 'junegunn/vim-easy-align'

" On-demand loading 按需加载
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" 好看的状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 中文帮助
Plug 'yianwillis/vimcdoc'

" Markdown实时预览
Plug 'suan/vim-instant-markdown'

" Bus Hound 抓包语法高亮显示
Plug 'jiftle/bushound-syntax'

" go语言插件
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dgryski/vim-godef'

" 显示tag
Plug 'majutsushi/tagbar'

" Go语言插件
Plug 'fatih/vim-go'

" Initialize plugin system
call plug#end()


