"set nocompatible              " required
filetype plugin on	      " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'jnurmine/Zenburn'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tomlion/vim-solidity'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
Plugin 'powerline/powerline'
Plugin 'lervag/vimtex'
Plugin 'plasticboy/vim-markdown'
Plugin 'godlygeek/tabular'
"
" " Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)
"
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required

set relativenumber
set number
set scrolloff=10
imap ;; <Esc>
set rtp+=/Users/carlosgonzalezoliver/anaconda/lib/python2.7/site-packages/powerline/bindings/vim

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1
"use space to open folds
nnoremap <space> za

" Python indents

highlight BadWhitespace ctermbg=red guibg=red

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix 

au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2 softtabstop=2 shiftwidth=2

" Flag unnecessary whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1
syntax on

" " Keep indentation level from previous line:
"autocmd FileType python set autoindent

let mapleader = ","
let localleader = ","
nmap <leader>ne :NERDTree<cr>

" script execution
nmap <leader>py :w<CR>:!python %<CR>

" colorscheme
colo koehler

