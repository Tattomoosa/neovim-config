" .md is a markdown file, always
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" change rust compiler to cargo
autocmd BufRead,BufNewFile Cargo.toml,Cargo.lock,*.rs,*.ron compiler cargo
autocmd FileType rust nnoremap <buffer> <leader>r :make run<CR>

" change python compiler to python3
" doesn't work :(
" autocmd BufRead,BufNewFile *.py compiler python3

" disable comment auto-insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" FILETYPE
" <leader>eh to switch to header files from code files
autocmd FileType c,cpp nnoremap <buffer> <leader>eh :e %:r.h<CR>
" <leader>ec to switch to code files from header files
autocmd BufEnter,Bufnew *.h nnoremap <buffer> <leader>ec :e %:r.c*<CR>
