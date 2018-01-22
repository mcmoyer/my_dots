"When editing .vimrc reload it to use changes
autocmd! bufwritepost .vimrc source %

"jump to last cursor position when opening a file
"dont do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal g`\""
        endif
    end
endfunction

"reindex ctags on write
autocmd BufWritePost *
  \ if exists('b:git_dir') && executable(b:git_dir.'/hooks/ctags') |
  \   call system('"'.b:git_dir.'/hooks/ctags" & ') |
  \ endif

"Set tabs according to file type
autocmd Filetype snippets setlocal noexpandtab

"Format xml if we load xml.
autocmd FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

if has("nvim") == 0
  " Start NERDTree if vim started without any files
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
endif

" Close if NERDTree is the only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
