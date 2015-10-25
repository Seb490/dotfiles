"====== Plugin Manager ======
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" enter desired plugins below
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"====== Plugin Configuration ======

" vim-airline config
let g:airline_powerline_fonts = 0
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='molokai'
set laststatus=2
set timeoutlen=50

"====== General Settings ======

" set the color settings
color molokai
" enables syntax highlighting
syntax enable
" enables highlighting for the line on which the cursor is on
set cursorline
" show the executed command
set showcmd
" show line numbers
set number
" enables the ruler to show line number, collum number and document position
set ruler
" enable 256 color terminal
set term=screen-256color

