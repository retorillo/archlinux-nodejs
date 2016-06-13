syntax on
set nocp
set backspace=indent,eol,start
set expandtab
set tabstop=2
set shiftwidth=2
set number
set incsearch
set cursorline
set foldmethod=indent
set ruler
set nowrap
set autoindent
set hidden
set laststatus=2
set background=dark

augroup markdown
  autocmd!
  autocmd BufRead,BufNewFile *.md set filetype=markdown
augroup END

let g:airline_theme='onedark'
let g:gitgutter_realtime=0
let g:gitgutter_eager=0
let g:table_mode_corner="|"

execute pathogen#infect()

color onedark

