" make sure vim-plug is installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'rking/ag.vim'

" Airline — Lean & mean status/tabline.
Plug 'bling/vim-airline'

" Vim One color scheme
Plug 'rakr/vim-one'

" making commentting easier
Plug 'tpope/vim-commentary'

" always have to have nerdtree
Plug 'scrooloose/nerdtree'

" vim fugitive - the vim git integration
Plug 'tpope/vim-fugitive'

" vim vim-rhubarb - allows Gbrowse behavior on vim-fugitive
Plug 'tpope/vim-rhubarb'

" ruby thingy bobs
Plug 'vim-ruby/vim-ruby'

" elixir thingy doodles
Plug 'elixir-editors/vim-elixir'

" makin' tabular stuff easier
Plug 'godlygeek/tabular'

" indent guides for the indent challenged
Plug 'nathanaelkane/vim-indent-guides'

" json, can't live with it, can't live with it
Plug 'elzr/vim-json'

" who doesn't need a personal local wiki
Plug 'vimwiki/vimwiki'
let wiki = {}
let wiki.path = '~/Dropbox/vimwiki/'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'ruby': 'ruby', 'bash': 'bash'}
let g:vimwiki_list = [wiki]

" quick navigation to factory girl factories
Plug 'christoomey/vim-rfactory'

" fzf for neovim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" why type end when you don't have to?
Plug 'tpope/vim-endwise'

" display git additions, deletions or changes in the gutter
Plug 'airblade/vim-gitgutter'

" run rspec tests from inside vim
" https://github.com/itmammoth/run-rspec.vim
Plug 'itmammoth/run-rspec.vim'

" code folding for rspec/capybara files
" call minpac#add('rlue/vim-fold-rspec')

" vim indent object allows you to select text by indentation level
Plug 'michaeljsmith/vim-indent-object'

" nginx syntax highlighting for vim
Plug 'chr4/nginx.vim'

" fuzzy finder for GeNeovim
if has("nvim")
  Plug 'akiyosi/gonvim-fuzzy'
endif

" NERDTree
Plug 'preservim/nerdtree'

call plug#end()
