" bot term ++rows=10

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'Lokaltog/powerline'
call plug#end()

" 设置字体
set guifont=Powerline_Consolas:h14:cANSI

" 设置主题
let g:airline_theme='bubblegum'

" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

" 是否打开tabline
let g:airline#extensions#tabline#enabled = 1 " 打开后，tabline和tmuxline都可以得到增强

" nerdtree 快捷键
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" 设置编码格式
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" 设置中文提示
" language messages zh_CN.utf-8
" 设置中文帮助
set helplang=cn
" 设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double

"自动语法高亮
syntax on

" 显示行号
set number
" 设置tab长度
set tabstop=4
set shiftwidth=4
" 显示匹配的括号
set showmatch
" 命令行为2行
set laststatus=2
" 忽略大小写
set ignorecase
set smartcase
" 搜索高亮显示
set hlsearch
" 搜索跳转
set incsearch
" 突出显示当前行
" set cursorline
" 命令模式下，在底部显示，当前键入的指令
set showcmd
" 显示模式
set showmode
" 自动折叠
set wrap
" 只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行。
set linebreak
" 在状态栏显示光标的当前位置
set ruler
" 去掉vi一致性
" set nocompatible
" 垂直滚动时，光标距离顶部或底部的行数
set scrolloff=5
