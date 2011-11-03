set modelines=0
set nocompatible    " Use Vim defaults instead of 100% vi compatibility
set backspace=2     " more powerful backspacing

syntax on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set number
colors ir_black
set bg=light

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" when pathogen dies mysteriously, this seems to work
so ~/.vim/bundle/vim-git/plugin/git.vim
so ~/.vim/bundle/vim-commentary/plugin/commentary.vim
so ~/.vim/bundle/vim-fugitive/plugin/fugitive.vim

set laststatus=2 " Enables the status line at the bottom of Vim

let g:git_branch_status_nogit="Git [none detected]"

set statusline=%w%h%m%r " Options
set statusline+=%{fugitive#statusline()}
set statusline+=\ [%{getcwd()}/%f]          " current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

" for changing the case of a visual selection, uses '~' key
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap ~ ygv"=TwiddleCase(@")<CR>Pgv

