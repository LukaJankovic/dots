set enc=utf-8
set nocompatible

" vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    Plug 'arcticicestudio/nord-vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'jasonccox/vim-wayland-clipboard'
call plug#end()

" visual

colorscheme nord
set termguicolors

set number

set autoindent expandtab tabstop=4 shiftwidth=4
set fillchars+=vert:\│

highlight RedundantSpaces ctermbg=9
match RedundantSpaces /\s\+$/

" behavior

set backspace=indent,eol,start
set mouse=a
set clipboard=unnamedplus " unnamedplus for linux

set updatetime=750

autocmd BufRead,BufNewFile *.md setlocal spell

" keybinds

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <silent> <C-N> :Lexplore<CR>
