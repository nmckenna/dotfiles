## Language Setup

sudo apt update
sudo apt -y upgrade
sudo apt install -y python3-pip
sudo apt install build-essential libssl-dev libffi-dev python-dev
sudo apt install -y python3-venv


## Configure VIM for python
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
touch ~/.vimrc

## -- Add the following to the .vimrc

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



## How to setup an virtual environment

python3 -m venv my_env

## Activate the environment

source my_env/bin/activate
