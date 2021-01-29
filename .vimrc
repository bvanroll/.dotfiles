set nocompatible " needed for vundle
filetype off " vundle requirement

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin 'VundleVim/Vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'itchyny/lightline.vim'
Plugin 'vimwiki/vimwiki'



call vundle#end()



" make lightline work
if !has('gui_running')
	set t_Co=256
endif

let g:lightline = {'colorscheme':'wombat'}


filetype plugin indent on 
let g:molokai_original = 1
let g:rehash256 = 1





set number relativenumber
set nu rnu
set laststatus=2
set cursorline
set wildmenu
set wildmode=longest,list,full
set hlsearch
set incsearch
set nocp
set autoindent
set tabstop=2 shiftwidth=2 expandtab
set smartcase
set autoread
setlocal spelllang=en_us

syntax on
colorscheme molokai


