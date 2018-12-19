"====== Plugin Manager ======

"====== Plugin Configuration ======


"====== General Settings ======

" set the proper encoding
set encoding=utf-8
" set the color settings
color molokai
" enables syntax highlighting
syntax enable
" enable omni-completion
set omnifunc=syntaxcomplete#Complete
" Close autocomplete window when done
autocmd CompleteDone * pclose
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

"Remapping of ö,ä,ü & ß to make the german keyboard more programmer friendly
ino ö (
ino ä )
ino Ö {
ino Ä }
ino ß [
ino ü ]
ino Ü \
