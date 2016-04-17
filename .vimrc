" ignore compatibility issues with Vi. Really don't know why ViM still defaults
" to this. Especially gViM.
set nocompatible

" To enable Pathogen, we have to first disable the filetype, load the bundles,
" and then re-enable.
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on

let mapleader="\<Space>"
inoremap jj <esc>
set t_Co=256
colorscheme monokai

" General Options
 set autoindent
 set autowrite
 set autoread
 set foldenable                  " Auto fold code
 set nowrap                      " Do not wrap long lines
 set nojoinspaces                " Prevents inserting two spaces after
" punctuation on a join (J)
"
 set number
 set norelativenumber
 set visualbell
 set showmode
 set showcmd
 set hidden
 set ttyfast
 set ruler
 set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
 set laststatus=2
 set history=100
 set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
 set list
 set matchtime=3

 set splitbelow
 set splitright
 set shiftround

 set title
 set spellfile=~/.vim/custom-dictionary.utf-8.add
 "set colorcolumn=+1
 set virtualedit=onemore             " Allow for cursor beyond last character
 set modelines=5
 set cursorline
 set scrolloff=10
"
 set encoding=utf-8
 set backspace=indent,eol,start
 set fillchars=diff:⣿,vert:│
 set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮

 set iskeyword-=.                    " '.' is an end of word designator
 set iskeyword-=#                    " '#' is an end of word designator
 set iskeyword-=-                    " '-' is an end of word designator

 set shell=/bin/bash\ --login
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>


"inoremap <C-Space> <C-x><C-o>
"inoremap <C-@> <C-Space>

let UseCustomKeyBindings = 1

" Spacing and tabbing {{{
set expandtab
set smarttab
set softtabstop=2
set tabstop=4
set shiftwidth=2
set wrap
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set textwidth=80
" }}}

" Tabs
nnoremap <leader>( :tabprev<cr>
nnoremap <leader>) :tabnext<cr>
nnoremap <leader>{ :tabnew<cr>


autocmd vimenter * NERDTree


noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>
let NERDTreeHighlightCursorline = 1
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let NERDTreeMapJumpFirstChild = 'gK'



let g:ctrlp_dont_split = 'NERD_tree_1'
let g:ctrlp_jump_to_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 1
let g:ctrlp_split_window = 0
let g:ctrlp_max_height = 20

let g:ctrlp_map = '<leader>p'
nnoremap <Leader>o :CtrlP<CR>

"nnoremap <leader>p :CtrlPTag<cr>


let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#show_buffers = 1
" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
 nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
 " This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

let g:used_javascript_libs = 'underscore,angularjs'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:syntastic_javascript_checkers = ['jshint']



let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.

