set nocompatible

set rtp^=~/.vim/bundle/Vundle.vim " Add Vundle to runtimepath


filetype off
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'     " vundle setup
  Plugin 'tpope/vim-fugitive'       " git tools
  Plugin 'tmhedberg/SimpylFold'
  Plugin 'tomasiser/vim-code-dark'
  " Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
  Plugin 'google/vim-jsonnet'
  Plugin 'ctrlp'
call vundle#end()            

" CtrlP File Finder
set rtp^=~/.vim/bundle/ctrlp.vim " Vim file finder
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
let g:ctrlp_working_path_mode = 'r' " Look for the closest ancestor w/ .git



let python_highlight_all=1
syntax on


set foldmethod=indent
set foldlevel=99

colorscheme codedark

filetype plugin indent on 

" [General vim rules]
set autoindent
set colorcolumn=80
set expandtab
set hlsearch
set nowrap
set relativenumber
set shiftwidth=2
set softtabstop=2 
set smarttab
set showmatch 
set smartindent
set tabstop=2
set cursorline
syntax on


" Key mappings
map! jj <ESC>
nnoremap <space> za 
let maplocalleader = '\'
nnoremap <esc> :noh<return><esc>


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

function! FormatJSON()
:%!python -m json.tool
endfunction


" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>


" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright



