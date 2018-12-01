"设置编码,处理中文乱码,文件默认utf8编码
set fileencodings=utf-8,ucs-bom,cp936,big5

"设置默认配色方案
colorscheme default
set nu
set ts=4 sts=4 sw=4
set autoindent
set expandtab
" 高亮当前行
set cursorline


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

" Initialize plugin system
call plug#end()

