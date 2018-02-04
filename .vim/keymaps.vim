
""""""""""""""""""""""""""""""""
" Keymaps
""""""""""""""""""""""""""""""""
" clear the search after hitting return
:nnoremap <CR> :nohlsearch<cr>

" \p to open NERDTreeToggle
nmap <silent> <Leader>p :NERDTreeToggle<CR>

"tab movement
map <leader>tp :tabprev<CR>
map <leader>tn :tabnext<CR>
map <leader>tl :tabs<CR>

"make Y consistent with C and D
nnoremap Y y$

"run the ruby file!
nnoremap <Leader>r :!ruby %<cr>

"toggle showing 'invisibles'
nnoremap <Leader>l :set list!<cr>

""""""""""""""""""""""""""""""""
" Multipurpose tab key
""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col-1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" Load the vimrc file quickly
nmap <leader>v :tabedit $MYVIMRC<cr>

" Remove any trailing whitespace 
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

" Format json in vim
nnoremap <Leader>fj :FormatJSON()<cr>
function! FormatJSON() 
  :%!python -m json.tool 
endfunction

function! FzyCommand(choice_command, vim_command)
  try
    let output = system(a:choice_command . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction
nnoremap <leader>e :call FzyCommand("ag . --silent -l -g ''", ":e")<cr>
"nnoremap <leader>v :call FzyCommand("ag . --silent -l -g ''", ":vs")<cr>
nnoremap <leader>s :call FzyCommand("ag . --silent -l -g ''", ":sp")<cr>

" Nerdtree remaps
nmap <silent> <Leader>p :NERDTreeToggle<CR>

" Copy to system clipboard
vnoremap <C-c> :w !pbcopy<CR><CR>

