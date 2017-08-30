execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible
set number
set mouse=a

set clipboard=unnamed "Shared clipboard
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

set laststatus=2 " Display vim-airline status bar when creating new split

map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>
imap jj <Esc>

let mapleader="\<Space>"

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

map <Leader>l :bn<CR>
map <Leader>h :bp<CR>
map <Leader>d :bd<CR>

" Ease navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set omnifunc=syntaxcomplete#Complete
colorscheme monokai
