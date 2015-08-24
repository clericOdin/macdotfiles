set nocompatible
filetype off

"Load Vundle and plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'sudar/vim-arduino-syntax'
Plugin 'Valloric/YouCompleteMe'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-scripts/guicolorscheme.vim'
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on

let g:OmniSharp_host = "http://localhost:2000"

"Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

au BufRead,BufNewFile *.ino set filetype=arduino

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" End Syntastic recommended settings

syntax on
set t_Co=256
runtime! plugin/guicolorscheme.vim
GuiColorScheme adaryn
colorscheme molokai

set autoread

"Turn on wild menu
set wildmenu

"Show line numbers
set number

"Configure backspace so it acts as it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"Ignore case when searching
set ignorecase

"When searching be smart about cases
set smartcase

"Show matching brakets when text indicator is over one
set showmatch

"How many tenths of a second to blink when matching brackets
set mat=2

"Use spaces instead of tabs
set expandtab

"Be smart about using tabs
set smarttab

set ai "autoindent
set si "smart indent
set wrap "wrap lines

"Height of the command bar
set cmdheight=5

"Use system cliboard for everything
set clipboard=unnamedplus

"Update vim after writing buffer
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif
