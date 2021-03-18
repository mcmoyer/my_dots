set nocompatible

source ~/.vim/packages.vim

" eye candy config
colorscheme one
set background=dark
let g:one_allow_italics = 1
" vimr ignores this and uses the gui to set the guifont...which kind of makes
" sense
if has("gui_running") && !has("nvim")
  set guifont=Hack:h15
endif

" store lots of :cmdline history
set history=10000

" make searches case sensitive only if they contain upper-case characters
set ignorecase smartcase
set nowrap      "dont wrap lines

" display numbers on the gutter
set number

" indent settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" make cmdline tab completion similar to bash
set wildmode=list:longest   
" enable ctrl-n and ctrl-p to scroll thru matches
set wildmenu                
" exclude files from listings
set wildignore+=*.o,*.log,*.obj,.git,*.jpg,*.png,*.gif,vendor/ruby,vendor/bundle,vendor/cache,tmp,public/download 

" display tabs and trailing spaces
set list
set listchars=tab:▸\ ,eol:¬

" dont continue comments when pushing o/O
set formatoptions-=o 

" vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=3

" allow mouse in all modes
set mouse=a

" hide buffers when not displayed
set hidden

" in neovim, configure clipboard to use the OS's clipboard
if has("nvim")
  set clipboard=unnamedplus
endif

" load ftplugins and indent files
filetype off
filetype plugin indent on

" turn on syntax highlighting
syntax on

" Stop the freakin' swp files population!
set noswapfile

" Common misspellings
iabbrev shoudl should
iabbrev campaing campaign
iabbrev fsl # frozen_string_literal: true
iabbrev dabc # rubocop:disable Metrics/AbcSize
" Configure the wiki from vim-wiki
let wiki = {}
let wiki.path = '~/Dropbox/vimwiki/'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'ruby': 'ruby', 'bash': 'bash'}
let g:vimwiki_list = [wiki]

source ~/.vim/autocmds.vim
source ~/.vim/keymaps.vim  

