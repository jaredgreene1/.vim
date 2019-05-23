set nocompatible

set rtp^=~/.vim/bundle/Vundle.vim " Add Vundle to runtimepath

filetype off
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'     " vundle setup
  Plugin 'tpope/vim-fugitive'       " git tools
  Plugin 'rust-lang/rust.vim'       " rust-lang features
  Plugin 'vim-syntastic/syntastic'  " syntax checking
  Plugin 'derekwyatt/vim-scala'
  Plugin 'jalvesaq/Nvim-R'          " nvim-r - start with '\rf'
  Plugin 'tomlion/vim-solidity'     " solidity syntax highlight
  Plugin 'leafgarland/typescript-vim' " typescript syntax highlighting
  Plugin 'scrooloose/nerdtree'
  Plugin 'Xuyuanp/nerdtree-git-plugin' " glit plugin for nerd tree



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


" Split screen remapping
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Functions
function! CleverTab()
   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
      return "\<Tab>"
   else
      return "\<C-N>"
   endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>


" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>


" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright



