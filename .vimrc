" vim-plug section
call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim' 
call plug#end()

let mapleader = "\<Space>"
:imap jk <Esc>

syntax on
filetype plugin indent on

set number
set ignorecase
set hlsearch
set incsearch
set showcmd
:set guicursor=i:block

set encoding=utf-8
set spell
setlocal spell spelllang=en,ru
set cursorline
set relativenumber
set splitbelow
" Enable hotkeys for Russian layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set expandtab
set shiftwidth=2
set softtabstop=2

" statusline configuration
set laststatus=2

let g:lightline = { 'colorscheme': 'nord', }

" colorscheme configuration
let g:nord_italic_comments = 1
let g:nord_uniform_status_lines = 1
let g:nord_uniform_diff_background = 1
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_uniform_diff_background = 1
let g:nord_bold = 1
let g:nord_italic = 1
set clipboard=unnamedplus

if !has('gui_running')
  set t_Co=256
endif
colorscheme nord
highlight CursorLineNr cterm=NONE

"last cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Auto source .vimrc
autocmd! bufwritepost .vimrc source %

set modelines=0
set nomodeline
