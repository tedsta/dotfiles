set nocompatible " be iMproved
filetype off

" Persistent undo
" set undofile
" set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'leafgarland/typescript-vim'

" Toml syntax highlighting
Plugin 'cespare/vim-toml'

Plugin 'rust-lang/rust.vim'

Plugin 'CaffeineViking/vim-glsl'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on    " required
filetype indent on    " required
syntax on

" Python no autoindent on : key
autocmd FileType python setlocal indentkeys-=<:>
autocmd FileType python setlocal indentkeys-=:

" Leader key
let mapleader=","

" tabs!!
set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new

" snake_case to CamelCase conversion
au BufRead *.ts vnoremap <Leader>c :s#\C\(\<\u[a-z0-9]\+\|[a-z0-9]\+\)\(\u\)#\l\1_\l\2#g<CR>

au BufRead,BufNewFile *.swift set filetype=swift
au BufRead,BufNewFile *.rs set filetype=rust

" Tab as 2 spaces in html files
au BufRead *.html set tabstop=2           " use 4 spaces to represent tab
au BufRead *.html set softtabstop=2
au BufRead *.html set shiftwidth=2        " number of spaces to use for auto indent

" Tab as 2 spaces in ts files
au BufRead *.ts set tabstop=2           " use 4 spaces to represent tab
au BufRead *.ts set softtabstop=2
au BufRead *.ts set shiftwidth=2        " number of spaces to use for auto indent

" Tab as 2 spaces in toml files
au BufRead *.toml set tabstop=2           " use 4 spaces to represent tab
au BufRead *.toml set softtabstop=2
au BufRead *.toml set shiftwidth=2        " number of spaces to use for auto indent

" Bindings to build/test/run rust projects
au BufRead *.rs nnoremap <Leader>b :!cargo build<CR>
au BufRead *.rs nnoremap <Leader>t :!cargo test<CR> au BufRead *.rs nnoremap <Leader>r :!cargo run<CR> 
" leader+p to toggle pasting
map <leader>p :set paste!<CR>

au BufNewFile,BufRead *.cpp set filetype=cpp11
