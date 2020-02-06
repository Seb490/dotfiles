
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
"set showcmd

" show line numbers with relative numbering
set number
set relativenumber

" Status line configuration
set laststatus=2	" Always use a status line
" Build up the status line
set statusline=%f         " Path to the file
set statusline+=\ -\      " Separator
set statusline+=FileType: " Label
set statusline+=%y        " Filetype of the file
set statusline+=%=        " Switch to the right side
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines

" Enables the ruler to show line number, collum number and document position
"set ruler

" enable 256 color terminal
set term=screen-256color

" enable incremental search
set incsearch

" enable search search result highlighting
set hlsearch

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

