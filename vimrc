"mkdir ~.vim
"create a file ~/.vimrc/vimrc with one line, pointing to this file: source ~/vim/vimrc
"cd ~/.vim
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"mv ~/Downloads/supertab-master.zip/bundle .
" cd bundle
"unzip supertab-master.zip
"unzip vim-buftabline-master

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'supertab-master'
"Plugin 'nerdtree'
Plugin 'vim-buftabline-master'
Plugin 'vim-javascript-master'
"Plugin 'bundle/bufexplorer'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let $MYHOME=expand('<sfile>:p:h:h')
map <Space> <PageDown>
map <Backspace> <PageUp>
"source $MYHOME/.vim/python_vim.vim
"execute pathogen#infect()
set shortmess+=A
set hidden
" backup to ~/.tmp
set backupdir=~/.backup//
set directory=~/.swap//
set undodir=~/.undo//
"filetype plugin on
filetype plugin indent on
set incsearch
set encoding=utf8
"source ~/.vim/ftplugin/minibufexpl.vim
set nobomb
set number
set textwidth=5000
set tabstop=4
set shiftwidth=4
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2                                                   

