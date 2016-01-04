" Be improved
set nocompatible

" Set backspace
set backspace=eol,start,indent

" Lines folding
" set foldenable
" set foldnestmax=1
" set foldmethod=syntax

" set background
set background=dark
colorscheme solarized
"colorscheme molokai
"colorscheme phd

" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 开启文件类型侦测
filetype on

" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 自适应不同语言的智能缩进
filetype indent on

" Set fileencodings
set fileencodings=ucs-bom,utf-8,gbk,big5

" Set complete options
set completeopt=longest,menu

" vim 自身命令行模式智能补全
set wildmenu
set wildmode=longest:full,full

" Set key codes timeout
set ttimeoutlen=100

" Auto change current directory
set autochdir

" Use absolute paths in sessions
set sessionoptions-=curdir

" Enable backup
set backup

" Set backup directory
set backupdir=/local/jiangangcheng/.vim/backup

" Set swap file directory
set directory=/local/jiangangcheng/.vim/swap,/tmp

" Keep more backups for one file
autocmd BufWritePre * let &backupext = strftime(".%m-%d-%H-%M")

" Dynamic title
set title

" Enable magic matching
set magic

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 将制表符扩展为空格
set expandtab

" 设置格式化时制表符占用空格数
set shiftwidth=4
" 设置编辑时制表符占用空格数
set tabstop=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" set line number
set nu!
" set linebreak

" 高亮显示当前行/列
set cursorline
set cursorcolumn

" set search/find 
set hlsearch

" set status line info
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

"  always show the status line    
set laststatus=2
set ruler

" show matching bracets.
set showmatch

" Ignore case when searching
set smartcase
set ignorecase
" Incremental match when searching
set incsearch

" Smart indet
set smartindent

" Auto indent
set autoindent

set ai!

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" *.cpp 和 *.h 间切换 install a.vim
nmap <Leader>ch :A<CR>
" 子窗口中显示 *.cpp 或 *.h
nmap <Leader>sch :AS<CR>

" Ctags & Cscope

" Auto finding
set tags=tags;

" Use both cscope and ctag
set cscopetag
" show msg when cscope db added
set cscopeverbose

" Use tags for definition search first
set cscopetagorder=1

" Use quickfix window to show cscope results
set cscopequickfix=s-,g-,d-,c-,t-,e-,f-,i-

" 禁止折行
set nowrap


" Cscope mappings
nnoremap <C-w>\ :scs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-\>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>

" Save & Make 
nnoremap <F5> :w<CR>:make!<CR>
nnoremap <F6> :w<CR>:make! %< CC=gcc CFLAGS="-g -Wall"<CR>:!./%<<CR>

" Quickfix window
nnoremap <silent> <F7> :botright copen<CR>
nnoremap <silent> <F8> :cclose<CR>

" vim-indent-guides plugin
" 随 vim 自启动 

let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
"  快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle
