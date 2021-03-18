command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()

packadd minpac

if !exists('*minpac#init')
  finish
endif

" install minpac with the one trick the internet is talking about 
" git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac
if has('nvim') 
  set packpath^=~/.neovimpacks
else
  set packpath^=~/.vim8packs
endif

call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-surround')
call minpac#add('rking/ag.vim')

if has('nvim') == 0
  call minpac#add('ctrlpvim/ctrlp.vim')

  ""CtrlP custom filter
  "let g:ctrlp_custom_ignore = {
  " \ 'dir': 'tmp\|\.git$\|vendor/bundle/ruby\|public/system\|\.sass-cache'
  " \ }
  let g:ctrlp_working_path_mode = 'cra'
  let g:ctrlp_user_command = 'ag . --silent -l -g ""'
endif

" Airline — Lean & mean status/tabline.
call minpac#add('bling/vim-airline')

" Vim One color scheme
call minpac#add('rakr/vim-one')

" making commentting easier
call minpac#add('tpope/vim-commentary')

" always have to have nerdtree
call minpac#add('scrooloose/nerdtree')

" vim fugitive - the vim git integration
call minpac#add('tpope/vim-fugitive')

" vim vim-rhubarb - allows Gbrowse behavior on vim-fugitive
call minpac#add('tpope/vim-rhubarb')

" ruby thingy bobs
call minpac#add('vim-ruby/vim-ruby')

" elixir thingy doodles
call minpac#add('elixir-editors/vim-elixir')

" makin' tabular stuff easier
call minpac#add('godlygeek/tabular')

" indent guides for the indent challenged
call minpac#add('nathanaelkane/vim-indent-guides')

" json, can't live with it, can't live with it
call minpac#add('elzr/vim-json')

" who doesn't need a personal local wiki
call minpac#add('vimwiki/vimwiki')
let wiki = {}
let wiki.path = '~/Dropbox/vimwiki/'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'ruby': 'ruby', 'bash': 'bash'}
let g:vimwiki_list = [wiki]

" quick navigation to factory girl factories
call minpac#add('christoomey/vim-rfactory')

" fzy for neovim
if has("nvim")
  call minpac#add('cloudhead/neovim-fuzzy')
  nnoremap <C-p> :FuzzyOpen<CR>
endif

" why type end when you don't have to?
call minpac#add('tpope/vim-endwise')

" display git additions, deletions or changes in the gutter
call minpac#add('airblade/vim-gitgutter')

" run rspec tests from inside vim
" https://github.com/itmammoth/run-rspec.vim
call minpac#add('itmammoth/run-rspec.vim')

" code folding for rspec/capybara files
" call minpac#add('rlue/vim-fold-rspec')

" vim indent object allows you to select text by indentation level
call minpac#add('michaeljsmith/vim-indent-object')

" nginx syntax highlighting for vim
call minpac#add('chr4/nginx.vim')

" fuzzy finder for GeNeovim
if has("nvim")
  call minpac#add('akiyosi/gonvim-fuzzy')
endif

" NERDTree
call minpac#add('preservim/nerdtree')
