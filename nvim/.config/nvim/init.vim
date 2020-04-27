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
" Deleting a buffer without closing the window
" see: https://vim.fandom.com/wiki/Deleting_a_buffer_without_closing_the_window
Plug 'rbgrouleff/bclose.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'tpope/vim-surround'
Plug 'rust-lang/rust.vim'
Plug 'psf/black', { 'tag': '19.10b0' }
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'dag/vim-fish'
Plug 'airblade/vim-gitgutter'
call plug#end()

let g:nord_italic = 1
let g:nord_underline = 1

color nord

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus

" Some basics
set colorcolumn=80
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
set autowrite


" Automatically read when a filors go overboard, Ie is changed outside of Vim
set autoread

" Split like a decent WM
set splitbelow
set splitright

" Shortcuts for split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Disables automatic commenting on newline
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

nmap <silent>  ;v  :next $MYVIMRC<CR>

" Auto reload init.vim
augroup VimReload
    autocmd!
    autocmd BufWritePost  $MYVIMRC  source $MYVIMRC
augroup END

nmap <silent> <BS>  :nohlsearch<CR>

" Tab switching like qutebrowser
nnoremap <S-j> :tabnext<CR><C-L>
nnoremap <S-k> :-tabnext<CR><C-L>

map <C-o> :FZF<CR>
" Use ripgrep in :FZF it ignores .git and .gitignore
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'

" Rust
let g:rustfmt_autosave = 1

" Python
let g:python3_host_prog = "~/.local/share/pyenv/versions/nvim-3.8/bin/python3"
au BufWritePre *.py execute | Black
if !exists("g:black_linelength")
  let g:black_linelength = 80
endif

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
