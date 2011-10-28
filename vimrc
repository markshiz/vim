set nocompatible    " Use Vim defaults instead of 100% vi compatibility
set backspace=2     " more powerful backspacing

call pathogen#infect() 

syntax on
filetype plugin indent on

set bg=dark
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set laststatus=2 " Enables the status line at the bottom of Vim
if exists('fugitive#statusline') 
    set statusline=%{fugitive#statusline()}
endif
