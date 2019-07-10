" .md is a markdown file, always
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" change rust compiler to cargo
autocmd BufRead,BufNewFile Cargo.toml, Cargo.lock,*.rs compiler cargo

" change python compiler to python3
" doesn't work :(
" autocmd BufRead,BufNewFile *.py compiler python3

" disable comment auto-insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
