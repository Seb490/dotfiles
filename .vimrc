"====== Plugin Manager ======
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Enter desired plugins below
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-fireplace'
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
" enable omni-completion
set omnifunc=syntaxcomplete#Complete
" Close autocomplete window when done
autocmd CompleteDone * pclose
" disable mode indicator
set noshowmode
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
" enable incremental search
set incsearch
" enable search search result highlighting
set hlsearch

"====== Key Mappings ======

" Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop> 
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

"Remapping of ö,ä,ü & ß to make the german keyboard more programmer friendly
ino ö (
ino ä )
ino Ö {
ino Ä }
ino ß [
ino ü ]
ino Ü \
