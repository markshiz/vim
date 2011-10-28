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
set number

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" when pathogen dies mysteriously, this seems to work
so ~/.vim/bundle/vim-git/plugin/git.vim
so ~/.vim/bundle/vim-commentary/plugin/commentary.vim
"so ~/.vim/bundle/vim-git-branch-info/plugin/git-branch-info.vim
so ~/.vim/bundle/fugitive/plugin/fugitive.vim

set laststatus=2 " Enables the status line at the bottom of Vim

let g:git_branch_status_nogit="Git [none detected]"

set statusline=%w%h%m%r " Options
"set statusline+=%{GitBranchInfoString()} "  Git Hotness
set statusline+=%{fugitive#statusline()}
set statusline+=\ [%{getcwd()}\%f]          " current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

