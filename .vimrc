set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on
filetype plugin on

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
"enable powerline fonts
let g:airline_powerline_fonts=1
"tabline config
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='default'

"config for NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"toggle NERDTree with ctrl-n
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

"adjust tabs to use spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

"automatically remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

"copy and paste
vnoremap <C-c> "+y
map <C-v> "+P

"autocomplete (), '', [], {} and double quotes
"ino " ""<left>
"ino ' ''<left>
"ino ( ()<left>
"ino [ []<left>
"ino { {}<left><ESC>2li
"ino {<CR> {<CR>}<ESC>0
"ino {;<CR> {<CR>};<ESC>0

"map escape key to caps for entering/exiting normal
inoremap jf <Esc>

"open file in browser
nnoremap <F8> :silent update<Bar>silent !chromium-browser %:p &<CR>

"autocomplete html tags -- experimental
autocmd FileType html inoremap ;d <div></div><Esc>FdT>i<Enter><Enter><Esc>1ki<c-t>
autocmd FileType html inoremap ;sp <span></span><Esc>FsT>i
autocmd FileType html inoremap ;1 <h1></h1><Esc>FhT>i
autocmd FileType html inoremap ;2 <h2></h2><Esc>FhT>i
autocmd FileType html inoremap ;3 <h3></h3><Esc>FhT>i
autocmd FileType html inoremap ;4 <h4></h4><Esc>FhT>i
autocmd FileType html inoremap ;5 <h5></h5><Esc>FhT>i
autocmd FileType html inoremap ;6 <h6></h6><Esc>FhT>i
autocmd FileType html inoremap ;p <p></p><Esc>FpT>i<Enter><Enter><Esc>1ki<c-t>
autocmd FileType html inoremap ;a <a href='#'></a><Esc>FaT#i<Backspace>
autocmd FileType html inoremap ;md <main></main><Esc>FmT>i<Enter><Enter><Esc>1ki<c-t>
autocmd FileType html inoremap ;sd <section></section><Esc>FsT>i<Enter><Enter><Esc>1ki<S-Tab><C-D>
autocmd FileType html inoremap ;btn <button></button><Esc>FbT>i

"configure theme and colorscheme
let base16colorspace=256
set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

"turn on if using a dark background
set background=dark

"set colorscheme
colorscheme gruvbox
let g:gruvbox_termcolors=256

"keep transparent background
"autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE
hi Normal guibg=NONE ctermbg=NONE

"transparent gutter
hi SignColumn guibg=NONE ctermbg=NONE

"helpers - show matching brackets, etc...
"set clipboard=autoselect
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


