" Status Line/*{{{*/
set noruler
filetype on
set laststatus=2
set statusline=%.20f     	 " Path to the file
set statusline+=%y         " Filetype of the file
set statusline+=%=   	     " Switch to right align
set statusline+=%5l        " Current line
set statusline+=/          " Separator
set statusline+=%-3L       " Filetype of the file
set statusline+=[%p%%]\ \ \ }}}

" Key Mappings/*{{{*/

inoremap jk <esc>

nnoremap <space> <Nop>
let mapleader = " "
let maplocalleader = "\\"

noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>

" move a line down
noremap - ddp

" move a line up
noremap _ ddkP

" toggle uppercase/lowercase 
inoremap <c-u> <esc>lviw~i
nnoremap <c-u> viw~

" add quotes and backticks
nnoremap <Leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <Leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <Leader>` viw<esc>a`<esc>bi`<esc>lel
vnoremap <Leader>" <esc>`>a"<esc>`<i"<esc>el
vnoremap <Leader>' <esc>`>a'<esc>`<i'<esc>el
vnoremap <Leader>` <esc>`>a`<esc>`<i`<esc>el

" open and source vimrc
nnoremap <Leader>ev :tabnew $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>}}}

" Abbreviations/*{{{*/
iabbrev adn and
iabbrev waht what
iabbrev tehn then
iabbrev taht that
iabbrev hvae have
iabbrev notive notice
iabbrev improce improve
iabbrev improced improved/*}}}*/

" Code Folding/*{{{*/
set foldlevelstart=0
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END/*}}}*/

" HTML  /*{{{*/

augroup filetype_html
	autocmd BufWritePre,BufRead *.html :normal gg=G
	autocmd BufNewFile,BufRead *.html setlocal nowrap
augroup END/*}}}*/

" line numbers
set relativenumber number 

" TEXT wrapping
set wrap linebreak

" shifting, tabbing, autoindent
set shiftround shiftwidth=2
set tabstop=2

set showmatch matchtime=2

" Search highlighting
set hlsearch incsearch

let g:netrw_liststyle=3

" Startup Message/*{{{*/
echomsg "Hi, mom!"
augroup startup_message
	autocmd!
	autocmd CursorHold * :echo "Hi, Mom!"
augroup END/*}}}*/


