set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8
set t_Co=256

let mapleader=","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

Plugin 'ycm-core/YouCompleteMe'
" Plugin 'nordtheme/vim'
Plugin 'lervag/vimtex'
Plugin 'kkoomen/vim-doge'
Plugin 'SirVer/ultisnips'
Plugin 'rakr/vim-one'
Plugin 'vim-airline/vim-airline'
Plugin 'bfrg/vim-cpp-modern'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set background=dark
colorscheme nord
" set background=dark

" DoGe python docstring
let g:doge_doc_standard_python = 'numpy'
let g:doge_mapping = '<Leader>doc'

" VimCompletesMe with vimtex
augroup VimCompletesMeTex
autocmd!
autocmd FileType tex
    \ let b:vcm_omni_pattern = g:vimtex#re#neocomplete
augroup END
" Disable vimtex compilation after each save
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 0,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

syntax on

set number

nnoremap gb :ls<CR>:b<Space>


" Enable folding
set foldmethod=indent
set foldlevel=99

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"rcopy content
vnoremap p pgvy

map <leader>y "+y
map <leader>p "+p

command DeleteWhitespaces %s/\s\+$//e
let g:python_highlight_all = 1

"visual select pasted stuff using gp
nnoremap gp `[v`]

"Enable Highlighting
set hls
