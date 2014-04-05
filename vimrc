set modelines=0
set nocompatible    " Use Vim defaults instead of 100% vi compatibility
set backspace=2     " more powerful backspacing

syntax on
filetype plugin on
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set number
colors ir_black
set bg=light
set autoindent
set cindent

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" when pathogen dies mysteriously, this seems to work
so ~/.vim/bundle/vim-git/plugin/git.vim
so ~/.vim/bundle/vim-commentary/plugin/commentary.vim
so ~/.vim/bundle/vim-fugitive/plugin/fugitive.vim
so ~/.vim/bundle/vim-snipmate/plugin/snipMate.vim
so ~/.vim/bundle/vim-snipmate/after/plugin/snipMate.vim
so ~/.vim/bundle/vim-snipmate/after/plugin/snipMate.vim
so ~/.vim/bundle/MatchTag/ftplugin/html.vim
so ~/.vim/bundle/nerdtree/plugin/NERD_tree.vim
so ~/.vim/bundle/vim-ruby/ftplugin/eruby.vim
so ~/.vim/bundle/vim-ruby/ftplugin/ruby.vim

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

