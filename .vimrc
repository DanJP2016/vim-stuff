set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on

"set encoding
set encoding=utf-8

"activate NeoComplete at startup
let g:neocomplete#enable_at_startup = 1

"airline config for syntastic
"enable / disable
let g:airline#extensions#syntastic#enabled = 1
"error_symbol
let airline#extensions#syntastic#error_symbol = 'E:'
"statusline error format
let airline#extensions#syntastic#stl_format_err = '%E{[%e(#%fe)]}'
"syntastic warning
let airline#extensions#syntastic#warning_symbol = 'W:'
"statusline warning format
let airline#extensions#syntastic#stl_format_err = '%W{[%w(#%fw)]}'


"adjust tabs to use spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

"autocomplete (), '', [], {} and double quotes
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>0
ino {;<CR> {<CR>};<ESC>0

"configure theme and colorscheme
set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

"turn on if using a dark background
set background=dark

"set colorscheme
colorscheme deus
let g:deus_termcolors=256

"keep transparent background
hi Normal guibg=NONE ctermbg=NONE

"helpers - show matching brackets, etc...
set clipboard=autoselect
set number
set showmatch
set confirm
set noerrorbells
set novisualbell
set ruler
set backspace=indent,eol,start
set hidden
