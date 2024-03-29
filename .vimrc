" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'

Plug 'preservim/nerdtree'

Plug 'doums/darcula'

Plug 'goerz/jupytext.vim'

call plug#end()

" }}}

" GENERAL ---------------------------------------------------------------- {{{

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Turn syntax highlighting on.
syntax on

" Omni autocompletion
set omnifunc=syntaxcomplete#Complete

" Omni autocompletion for python
autocmd FileType python set omnifunc=python3complete#Complete

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Make vim always wrap lines
set wrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Set tab width
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Make vim always use tabs
set noexpandtab
retab

" Display tabs as lines
set lcs=tab:\|\  " Note the two spaces as last characters
set list

" Enable spellcheck at start
set spell

" Enable mouse support
set mouse=v

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}

" MAPPINGS --------------------------------------------------------------- {{{ 


" map_mode <what_you_type> <what_is_executed>
" map_modes: 
" nnoremap-	normal mode
" inoremap-	insert mode
" vnoremap-	visual mode

" Set the backslash as the leader key.
let mapleader = "/"

" Press \\ to jump back to the last cursor position.
nnoremap <leader>\ ``

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <F3> :NERDTreeToggle<cr>

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" Run make on ctrl + m
nnoremap <f5> :w <CR>:!clear <CR>:!make <CR>

" Make e and b go to end and beginning of line
nnoremap <c-e> <end>
inoremap <c-e> <end>
vnoremap <c-e> <end>
nnoremap <c-b> <home>
inoremap <c-b> <home>
vnoremap <c-b> <home>

" Add move line up/down to ctrl up/down
nnoremap <c-up> :move -2 <CR>
nnoremap <c-down> :move +1 <CR>

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}

" COLORSCHEME ------------------------------------------------------------- {{{

" Select the darcula colorscheme
colorscheme darcula

" }}}

" LOADPACKS --------------------------------------------------------------- {{{

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

" }}}

