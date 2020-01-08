let mapleader=","
let maplocalleader=","


" Automatically install plugins
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif


call plug#begin('~/.config/nvim/plugged')
Plug 'dag/vim-fish'
" Deleting a buffer without closing the window
" see: https://vim.fandom.com/wiki/Deleting_a_buffer_without_closing_the_window
Plug 'rbgrouleff/bclose.vim'
Plug 'psf/black'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'jceb/vim-orgmode'
Plug 'itchyny/calendar.vim'
Plug 'rust-lang/rust.vim'
Plug 'arcticicestudio/nord-vim'
call plug#end()

color nord

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus

" Some basics
set termguicolors
set tabstop=4
set shiftwidth=4
set expandtab
set path+=**
filetype plugin indent on
set laststatus=2
set number
set relativenumber
set hidden
set showcmd
set hlsearch
set noshowmode

" Automatically read when a file is changed outside of Vim
set autoread

" Split like a decent WM
set splitbelow
set splitright

" Shortcuts for split navigation
map <A-h> <C-w>h
map <A-j> <C-w>j
map <A-k> <C-w>k
map <A-l> <C-w>l

" Disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Tab switching like qutebrowser
nnoremap <S-j> :tabnext<CR><C-L>
nnoremap <S-k> :-tabnext<CR><C-L>

map <C-o> :FZF<CR>
let $FZF_DEFAULT_COMMAND = "find -L"

" Rust
let g:rustfmt_autosave = 1

" Format python files using black
au BufWritePre *.py execute | Black

" Automatically remove trailing whitespaces
autocmd BufWritePre * %s/\s\+$//e

set tags=./tags;/

" For vim-fish
autocmd FileType fish compiler fish
autocmd FileType fish setlocal textwidth=79
autocmd FileType fish setlocal foldmethod=expr

" Get correct comment highlighting for json
autocmd FileType json syntax match Comment +\/\/.\+$+

" Use POSIX compatible shell for vim
if &shell =~# 'fish$'
    set shell=sh
endif

" Snakemake syntax highlighting
au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *.rules set syntax=snakemake
au BufNewFile,BufRead *.snakefile set syntax=snakemake
au BufNewFile,BufRead *.snake set syntax=snakemake
