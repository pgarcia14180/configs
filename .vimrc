" Plug configuration
call plug#begin('~/.vim/plugged')
Plug 'istib/vifm.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mileszs/ack.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'ervandew/supertab'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'dracula/vim'
Plug 'sheerun/vim-polyglot'
Plug 'svermeulen/vim-subversive'
Plug 'posva/vim-vue'
Plug 'tpope/vim-repeat'
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" removed plugins:
" Plug 'neoclide/coc.nvim'

" map leader mappings
let mapleader=" "
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
nmap S <plug>(SubversiveSubstituteToEndOfLine)ersiveSubstitute)
nnoremap <leader>v :EditVifm<esc>
nnoremap <leader>f :Files .<esc>
nnoremap <leader>a :Ack 
nnoremap <leader><BS> :!<Up> 
" split tmux
nnoremap <leader>t :silent exec "!tmux split"<CR>
nnoremap <leader>T :silent exec "!tmux split -h"<CR>

set noswapfile
set nocompatible
filetype plugin on
syntax on
set wrap 
set number
set mouse=a
set foldmethod=indent
set hlsearch
set wildmenu
set wildmode=longest,list,full
set number relativenumber
" Up and down to relative line
nnoremap j gj
nnoremap k gk
" Exit insert mode easier
inoremap jk <esc>
inoremap kj <esc>
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set backspace=indent,eol,start
set clipboard=unnamed
" For using find in current dir
set path+=**
" search for visually selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
" show status bar
set laststatus=2
" syntax
syntax on
