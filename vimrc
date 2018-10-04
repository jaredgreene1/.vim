set nocompatible

set rtp^=~/.vim/bundle/Vundle.vim " Add Vundle to runtimepath

filetype off
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'     " vundle setup
  Plugin 'tpope/vim-fugitive'       " git tools
  Plugin 'rust-lang/rust.vim'       " rust-lang features
  Plugin 'vim-syntastic/syntastic'  " syntax checking
  Plugin 'derekwyatt/vim-scala'
  Plugin 'jalvesaq/Nvim-R'          "nvim-r - start with '\rf'
call vundle#end()            
filetype plugin indent on 

let g:syntastic_python_checkers = ['pylint'] 
let g:rustfmt_autosave=1        " autofmt rust code on write


" [Sytastic setting]
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_r_lintr_checker = 1


" [General vim rules]
set autoindent
set colorcolumn=75
set expandtab
set hlsearch
set nowrap
set number
set shiftwidth=2
set softtabstop=2 
set smarttab
set showmatch 
set smartindent
set tabstop=2
syntax on


" Key mappings
map! jj <ESC>
let maplocalleader = '\'
