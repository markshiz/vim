filetype on
filetype off

set modelines=0
set nocompatible    " Use Vim defaults instead of 100% vi compatibility
set backspace=2     " more powerful backspacing

syntax on
filetype plugin indent on

set bg=dark
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set laststatus=2 " Enables the status line at the bottom of Vim

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

if exists('fugitive#statusline') 
    set statusline=%{fugitive#statusline()}
endif

" when pathogen dies mysteriously, this seems to work
so ~/.vim/bundle/vim-git/plugin/git.vim
so ~/.vim/bundle/vim-commentary/plugin/commentary.vim
