" Configure Vundle
"
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vimwiki/vimwiki'




" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Setup Split Navigation
" J = up
" K = down
" H = left
" L = right
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set background mode to be dark
" Makes the text more readable on dark backgrounds
set background=dark

" Set the mapleader to become ',' and show the command at the
" bottom of the screen'
"
set showcmd
let mapleader = ","

" Vim Wiki
"
let g:vimwiki_list = [{'path': '~/Sync/wiki', 'syntax': 'markdown'}]
au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab
