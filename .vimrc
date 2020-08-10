"====== General Settings ======

" disable vi compatibility mode
set nocompatible

" Move viminfo into the cache folder
set viminfo+=n~/.cache/vim/viminfo

" set the proper encoding
set encoding=utf-8

" enables syntax highlighting
syntax enable

" set the color settings
colorscheme nord
"let g:molokai_original = 1
"color molokai
"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme tango

" enable omni-completion
set omnifunc=syntaxcomplete#Complete

" Close autocomplete window when done
autocmd CompleteDone * pclose

" enables highlighting for the line on which the cursor is on
set cursorline

" show the executed command
set showcmd

" show line numbers with relative numbering
set number
set relativenumber

" Status line configuration
set laststatus=2	" Always use a status line
" Build up the status line
set statusline=\ %y\      " Filetype of the file
set statusline+=%F        " Path to the file

set statusline+=%=        " Switch to the right side
set statusline+=%03.c\ 	  " Current column
set statusline+=%02.p%%	  " Percentage through file in lines
set statusline+=\ 	  " Separator 
set statusline+=%03.l     " Current line
set statusline+=/         " Separator
set statusline+=%03.L     " Total lines
set statusline+=\         " Separator

" Enables the ruler to show line number, collum number and document position
"set ruler

" enable 256 color terminal
"set term=screen-256color

" enable incremental search
set incsearch

" enable search search result highlighting
set hlsearch

"====== Plugin Configuration ======

" vim-go plugin 
let g:go_def_mode='gopls'	" use go please for language support
let g:go_info_mode='gopls'

"====== Key Mappings ======

" map {lhs} to {rhs} in Normal and Visual mode
map ö (
map Ö )
map ä {
map Ä }
map ü [
map Ü ]
map ß /

" map {lhs} to {rhs} in Insert and Command-line mode
map! ö (
map! Ö )
map! ä {
map! Ä }
map! ü [
map! Ü ]
map! ß /

