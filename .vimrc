set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on

set encoding=utf-8

" enable powerline fonts for airline
let g:airline_powerline_fonts=1

" enable airline tabline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='default'

" Ale config
let g:airline#extensions#ale#enabled=1
let g:ale_lint_on_text_changed='never'
let g:ale_lint_on_enter=0

"config for NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeQuitOnOpen=1

" config for NERDCommenter
let g:NERDSpaceDelims=1
let g:NERDDefaultAlign='left'
let g:NERDTrimTrailingWhitespace=1
let g:NERDToggleCheckAllLines=1

" adjust tabs to use 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

" open .vimrc in split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" source .vimrc after editing
nnoremap <leader>sv :source $MYVIMRC<cr>

" for entering/exiting normal mode
inoremap jf <Esc>

" auto remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" disable automatic commenting of next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" run xrdb when .Xresources or .Xdefaults is updated
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

" setup colorscheme
set background=dark
colorscheme gruvbox

" italic comments
hi Comment cterm=italic

" keep transparency
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi lineNR  guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi Folded guibg=NONE ctermbg=NONE

" shownumbers, matching brackets...
set number
set showmatch
set confirm
set noerrorbells
set novisualbell
set ruler
set backspace=indent,eol,start
set hidden
set autoread
set showcmd
set hlsearch
set incsearch
set foldmethod=marker
set nofoldenable

" avoids problems using parcel.js
set nobackup
set nowritebackup


