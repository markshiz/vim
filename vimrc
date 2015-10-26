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
set t_Co=256
colors ir_black
set bg=light
set autoindent
set cindent

call pathogen#infect()
call pathogen#helptags()

set laststatus=2 " Enables the status line at the bottom of Vim

let g:airline_powerline_fonts = 1
let ropevim_vim_completion=1

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

" for moving lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

