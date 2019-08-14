set termguicolors
set tabstop=4
set shiftwidth=4
set expandtab
set path+=**
filetype plugin on
set laststatus=2
set number
set relativenumber
set hidden
set showcmd
set hlsearch
set noshowmode
set splitbelow
set splitright
nnoremap <C-L> :nohl<CR><C-L>
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <S-j> :tabnext<CR><C-L>
nnoremap <S-k> :-tabnext<CR><C-L>

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

let mapleader="\<SPACE>"
map <C-o> :FZF<CR>

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'dylanaraps/wal.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'posva/vim-vue'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
call plug#end()

color dracula

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \   'cocstatus': 'coc#status'
      \ },
	  \	}

let $FZF_DEFAULT_COMMAND = "find -L"

set tags=./tags;/
