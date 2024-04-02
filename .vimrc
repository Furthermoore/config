" startup message
echomsg "Hi, mom!"

" line numbers
set relativenumber number 

" TEXT wrapping
set wrap linebreak

" shifting, tabbing, autoindent
set shiftround shiftwidth=2
set tabstop=2

set showmatch matchtime=2

" custom key mappings

nnoremap <space> <Nop>
let mapleader = " "
let maplocalleader = "\\"

" move a line down
noremap - ddp

" move a line up
noremap _ ddkP

" toggle uppercase/lowercase 
inoremap <c-u> <esc>lviw~i
nnoremap <c-u> viw~

nnoremap <Leader>ev :tabnew $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>

" abbreviations
iabbrev @@ dan.howard.moore.24@gmail.com
iabbrev ccopy Copyright 2024 Dan Moore, All Rights Reserved

iabbrev adn and
iabbrev waht what
iabbrev tehn then




