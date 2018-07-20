"==========================
" visuals
"==========================
set title
set titleold="Terminal"
set titlestring=%F
set gcr=a:blinkon0
set scrolloff=5
set laststatus=2
set modeline
set modelines=10
set hidden
set nowrap

"==========================
" lines
"==========================
syntax on
set ruler
set number

"==========================
" encoding
"==========================
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

"==========================
" interaction
"==========================
" cause ctrl+w to always delete previous word (instead of only words entered
" since beginning of current insert mode)
set backspace=indent,eol,start
" delete previous word ctrl+backspace
imap <C-BS> <C-W>
"==========================
" indentation
"==========================
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"==========================
" searching
"==========================
set nohlsearch
set incsearch
set ignorecase
set smartcase

"==========================
" files
"==========================
set nobackup
set noswapfile
set fileformats=unix,dos,mac
set autoread

"==========================
" keys
"==========================
" enter normal mode
inoremap kj <Esc>

" map leader ,
let mapleader=','

" leader,ctrl-h to toggle search highlighting
nnoremap <leader><C-h> :set hls!\|set hls?<CR>

" close buffer in current split without losing split
nnoremap <silent> <leader>c :b #\|:bd #<CR>

" splits
noremap <leader>sh :<C-u>split<CR>
noremap <leader>v :<C-u>vsplit<CR>

" buffer nav
noremap <leader>z :bp<CR>
noremap <leader>q :bn<CR>

" split nav
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" press enter to clear search highlight
nnoremap <cr> :noh<cr>

" toggle relative line numbers
noremap <S-t> :set relativenumber!<cr>

" abbrev case insensitivity
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"==========================
" plugin configuration
"==========================
let g:lexima_enable_space_rules = 0
