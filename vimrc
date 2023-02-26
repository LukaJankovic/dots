" vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(expand('~/.vim/plugged'))
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'antoyo/vim-licenses'
Plug 'Yggdroot/indentLine'
"Plug 'roman/golden-ratio'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'chrisbra/Colorizer'
Plug 'justinmk/vim-sneak'
call plug#end()

set t_Co=256                         " Enable 256 colors
if (has("termguicolors"))
   set termguicolors
endif

" Nerdtree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Vim-devicons
set encoding=UTF-8

" Vim-licenses
let g:licenses_copyright_holders_name = 'Luka Jankovic'

" indentLine
let g:indentLine_char = '│'


" Fzf
nnoremap <silent> <C-f> :Files<CR>

" Lightline
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

" Color
augroup nord-theme-overrides
  autocmd!
  " Use 'nord7' as foreground color for Vim comment titles.
  autocmd ColorScheme nord highlight vimCommentTitle ctermfg=14 guifg=#8FBCBB
augroup END

colorscheme nord

let g:colorizer_auto_color = 1


" Keys
"map <C-o> :NERDTreeToggle<CR>
"vmap c <plug>NERDCommenterToggle

" Disable quote concealing in JSON files
let g:vim_json_conceal=0

" Other
set number

set fillchars=vert:\│

set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set noexpandtab

set list
set listchars=tab:→-

set showmatch
set autochdir

set incsearch

map <C-w> :set wrap!<CR>

filetype plugin on

if has('macunix') && !has('nvim')
    set clipboard=unnamedplus,unnamed,autoselect
    set backspace=indent,eol,start
endif

set mouse=a

" vim colors in foot term

" Enable 24-bit colors
"set termguicolors
"let &t_8f = "\<Esc>[38:2::%lu:%lu:%lum"
"let &t_8b = "\<Esc>[48:2::%lu:%lu:%lum"

" Enable native mouse support
set mouse=a 
set ttymouse=sgr

" Workaround bug in vim, where it incorrectly thinks modifyOtherKeys level 2 is
" enabled, even when it's not. The snippets below ensure modifyOtherKeys=2 is
" enabled. https://github.com/vim/vim/issues/9014
let &t_TI = "\<Esc>[>4;2m"
let &t_TE = "\<Esc>[>4;m"

" Disable concealing
let g:conceallevel = 0
let g:indentLine_conceallevel = 0

noremap! <C-?> <C-h>
