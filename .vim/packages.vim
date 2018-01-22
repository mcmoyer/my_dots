command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

if !exists('*minpac#init')
  finish
endif

call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-surround')
call minpac#add('rking/ag.vim')
call minpac#add('ctrlpvim/ctrlp.vim')

"CtrlP custom filter
let g:ctrlp_custom_ignore = {
 \ 'dir': 'tmp\|\.git$\|vendor/bundle/ruby\|public/system\|\.sass-cache'
 \ }


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

" ruby thingy bobs
call minpac#add('vim-ruby/vim-ruby')

" elixir thingy doodles
call minpac#add('elixir-editors/vim-elixir')

" fzy for neovim
if has("nvim")
  call minpac#add('cloudhead/neovim-fuzzy')
  nnoremap <C-p> :FuzzyOpen<CR>
endif

" why type end when you don't have to?
call minpac#add('tpope/vim-endwise')
