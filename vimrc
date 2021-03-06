 " Be improved
 set nocompatible

 " Set backspace
 set backspace=eol,start,indent

 " Lines folding
 " set foldenable
 " set foldnestmax=1
 " set foldmethod=syntax

 " Enable filetypes
 filetype plugin indent on

 " set background
 " set background=dark
 " colorscheme solarized
 " colorscheme molokai
 " colorscheme phd
 colorscheme desert 

 " Set fileencodings
 set fileencodings=ucs-bom,utf-8,gbk,big5

 " Set complete options
 set completeopt=longest,menu

 " Set wild menu & mode
 set wildmenu
 set wildmode=longest:full,full

 " Set key codes timeout
 set ttimeoutlen=100

 " Auto change current directory
 set autochdir

 " Use absolute paths in sessions
 set sessionoptions-=curdir

 " Enable backup
 " set backup

 " Set backup directory
 "  set backupdir=/home/chengjiangang/.vim/backup

 " Set swap file directory
 " set directory=/home/chengjiangang/.vim/swap,/tmp

 " Keep more backups for one file
 autocmd BufWritePre * let &backupext = strftime(".%m-%d-%H-%M")

 " Dynamic title
 set title

 " Enable magic matching
 set magic

 syntax enable
 set expandtab

 " Use hard tabs
 set shiftwidth=4
 set tabstop=4
 set softtabstop=4

 " set line number
 set nu!
 " set linebreak

 " set search/find 
 set hlsearch
 set incsearch

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

 autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

 let g:winManagerWindowLayout='FileExplorer|TagList'
 nmap wm :WMToggle<cr>

 "自动开启,可以选择开启vim即启用winmanaer，那么将需要将vimmanager.vim中的AutoOpenWinManger的注释取消。  
au VimEnter * :WMToggle

 " Save & Make 
 nnoremap <F5> :w<CR>:make!<CR>
 nnoremap <F6> :w<CR>:make! %< CC=gcc CFLAGS="-g -Wall"<CR>:!./%<<CR>

 " Quickfix window
 nnoremap <silent> <F7> :botright copen<CR>
 nnoremap <silent> <F8> :cclose<CR>
