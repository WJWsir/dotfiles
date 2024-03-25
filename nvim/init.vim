" Key remapping
imap jk <Esc>

" Tab remapping
nnoremap tn  :tabnew<CR>
nnoremap tl  :tabnext<CR>
nnoremap th  :tabprev<CR>
nnoremap tc  :tabclose<CR>

" Split remapping
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

let mapleader =' '

" Allows for mouse scrolling
set mouse=a

" Highlight All Search Pattern
set hlsearch

" Indentation
set tabstop=8     " tabs are at proper location
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=4  " indenting is 4 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs
set cindent       " stricter rules for C programs

" Substitude and Pattern match
set ignorecase    " 设置默认进行大小写不敏感查找
set smartcase     " 如果有一个大写字母，则切换到大小写敏感查找

" Color
set t_Co=256
syntax on
set background=dark

" Line Numbers
set relativenumber
set number

" Clipboard
set clipboard=unnamed

" Make backspace work
set backspace=2

"Vundleet nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" NERDTree
Plug 'preservim/nerdtree'
" MultiCursor
Plug 'terryma/vim-multiple-cursors'
" Gruvbox
Plug 'morhetz/gruvbox'
" Sneak
Plug 'justinmk/vim-sneak'
" Easymotion
Plug 'easymotion/vim-easymotion'
" Surround
Plug 'tpope/vim-surround'
" EasyAlign
Plug 'junegunn/vim-easy-align'
" Fugitive
Plug 'tpope/vim-fugitive'
" Ctrlp
Plug 'ctrlpvim/ctrlp.vim'
" Vim-Tmux navigator
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" Gruvbox
colorscheme gruvbox


