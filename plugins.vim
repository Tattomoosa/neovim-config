"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.config/nvim/plugins/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.config/nvim/plugins/')
  call dein#begin('~/.config/nvim/plugins/')

  " Let dein manage dein
  " Required:
  call dein#add('~/.config/nvim/plugins/repos/github.com/Shougo/dein.vim')

  " PLUGINS
	" movement
	call dein#add('tmhedberg/matchit')
  " docs
  call dein#add('Shougo/echodoc')
  " rust
  call dein#add('rust-lang/rust.vim')
  call dein#add('racer-rust/vim-racer')
  call dein#add('dan-t/rusty-tags')
  " syntax
  call dein#add('ron-rs/ron.vim')
  call dein#add('pangloss/vim-javascript')
  call dein#add('othree/html5.vim')
  call dein#add('posva/vim-vue')
  call dein#add('chemzqm/vim-jsx-improve')
  call dein#add('elzr/vim-json')
  call dein#add('gabrielelana/vim-markdown')
  call dein#add('cakebaker/scss-syntax.vim')
  " other
  call dein#add('kien/ctrlp.vim')
  call dein#add('scrooloose/nerdtree')
  " git
  call dein#add('airblade/vim-gitgutter')
  call dein#add('tpope/vim-fugitive')
  call dein#add('junegunn/goyo.vim')
  " changes working directory to project route
  " COMPLETION
  " coc
  call dein#add('neoclide/coc.nvim', {'merge': 0, 'build': './install.sh nightly'})
  call dein#add('ternjs/tern_for_vim.git')
  call dein#add('docunext/closetag.vim')
  " display
  call dein#add('ap/vim-css-color')
  " colorschemes
  call dein#add('morhetz/gruvbox')
  call dein#add('romainl/apprentice')
  " comments
  call dein#add('scrooloose/nerdcommenter')
  " surround
  call dein#add('tpope/vim-surround')
  " dispatch
  call dein#add('tpope/vim-dispatch')
  call dein#add('radenling/vim-dispatch-neovim')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" Installs uninstalled plugins on startup
if dein#check_install()
  call dein#install()
endif

let g:tern#filetypes = [
	\ 'js',
	\ 'jsx',
	\ 'javascript.jsx',
	\ 'vue'
	\ ]

"ctrl p
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*

"closetag
:au Filetype html,xml,xsl,jsx source ~/.config/nvim/plugins/repos/github.com/docunext/closetag.vim/plugin/closetag.vim

" disable all gitgutter mappings
let g:gitgutter_map_keys = 0

" customize NERDCommenter
let g:NERDSpaceDelims = 1

" commenting functions in .Vue files
let g:ft = ''
fu! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        let syn = tolower(syn)
        exe 'setf '.syn
      endif
    endif
  endif
endfu
fu! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    g:ft
  endif
endfu

" Rusty-tags
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&"
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi

" racer mappings
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

let g:racer_experimental_completer = 1
