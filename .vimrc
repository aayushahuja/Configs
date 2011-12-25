"Basic options
set nocompatible
set smartindent
set nu
set incsearch

winpos 0 0
set lines=500
set columns=500

"Backup directories to keep clean folders
set backupdir=~/.vim-tmp
set directory=~/.vim-tmp 

"Enabling syntax, omni-completion
syntax on
filetype on
filetype plugin on

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType haskell set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=ccomplete#Complete

"Clean up the GUI
"T for toolbar,lrb for left,right,bottom scrollbars
set guioptions-=T
set guioptions-=b
"set guioptions-=l
set shortmess+=I

"Key maps
let mapleader=","
nmap <leader>n :tabedit $MYVIMRC<CR>
nmap <leader>o zo<CR>
nmap <leader>c zc<CR>
map <leader>v :sp<cr>
map <leader>h :vsp<cr>

"Set wildmenu
set wildmenu

"For markdown files
autocmd BufRead,BufNewFile *.markdown  setlocal ai formatoptions=tcroqn2 comments=n:&gt;
autocmd BufRead,BufNewFile *.markdown  setlocal wrap linebreak textwidth=0
autocmd BufRead,BufNewFile *.markdown  setlocal nonumber
autocmd BufRead,BufNewFile *.markdown  setlocal textwidth=80

"The tab behaviour for C files
autocmd BufRead,BufNewFile *.c setlocal sw=2 sts=2 et
"
"The tab behaviour for haskell files
autocmd BufRead,BufNewFile *.hs setlocal sw=4 sts=4 et

"Color column for C files
autocmd BufRead,BufNewFile *.c set colorcolumn=80

"Setting fold options
set foldmethod=marker


"For LustyExplorer
set hidden

"Modify the statusline
set laststatus=1

"Format the statusline
hi StatusLine cterm=standout term=standout guifg=#66ccff gui=underline,bold guibg=bg
hi StatusLineNC cterm=underline term=underline guifg=fg gui=underline guibg=bg
hi User1  ctermbg=Red guibg=Red guifg=bg 
set statusline=%y\ \ %(%{fugitive#statusline()}\ \ %)%{getcwd()}\ \ %1*%m%*%f%=%l:%L\ 

"Change the leader key
nmap <leader>V :source $MYVIMRC<CR>
nmap <leader>w :w<CR>
nmap <leader>q :wqa<CR>

colorscheme torte


map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_
set showmatch

"control-c, control-v for copying,pasting
map <C-V> "+gP
cmap <C-V> <C-R>+
vnoremap <C-C> "+y
vnoremap <C-X> "+x

