set nocompatible              " be iMproved, required
filetype off                  " required

" Leader key
let mapleader=","

" tabs!!
set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new

" Make alt key bindings work
let c='a'
while c <= 'z'
    exec "set <A-".c.">=\e".c
    exec "imap \e".c." <A-".c.">"
    let c = nr2char(1+char2nr(c))
endw
set timeout ttimeoutlen=50

" Bindings to build/test/run rust projects
au BufRead *.rs nnoremap <Leader>b :!cargo build<CR>
au BufRead *.rs nnoremap <Leader>t :!cargo test<CR>
au BufRead *.rs nnoremap <Leader>r :!cargo run<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'rust-lang/rust.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
