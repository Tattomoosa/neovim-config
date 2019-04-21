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

  " Add or remove your plugins here:
	" movement
	call dein#add('justinmk/vim-sneak')
	call dein#add('tmhedberg/matchit')
	" syntax
	call dein#add('pangloss/vim-javascript')
	call dein#add('othree/html5.vim')
	call dein#add('posva/vim-vue')
	call dein#add('chemzqm/vim-jsx-improve')
	call dein#add('elzr/vim-json')
  call dein#add('rust-lang/rust.vim')
	" call dein#add('othree/jspc.vim')
	call dein#add('cakebaker/scss-syntax.vim')
	" other
	call dein#add('kien/ctrlp.vim')
	call dein#add('scrooloose/nerdtree')
	" git
	call dein#add('airblade/vim-gitgutter')
	call dein#add('tpope/vim-fugitive')
	" changes working directory to project route
	" call dein#add('airblade/vim-rooter')
	" completion
	call dein#add('Shougo/deoplete.nvim')
	call dein#add('carlitux/deoplete-ternjs')
	call dein#add('ternjs/tern_for_vim.git')
	call dein#add('ervandew/supertab')
	" call dein#add('jiangmiao/auto-pairs')
	call dein#add('docunext/closetag.vim')
	" display
	call dein#add('ap/vim-css-color')
	call dein#add('blueyed/vim-diminactive')
	" colorschemes
	call dein#add('morhetz/gruvbox')
	" comments
	" call dein#add('tpope/vim-commentary')
  call dein#add('scrooloose/nerdcommenter')
	" surround
	call dein#add('tpope/vim-surround')
	" minimap
	" call dein#add('severin-lemaignan/vim-minimap')
	" formatting
	" call dein#add('junegunn/vim-easy-align')
	" call dein#add('chiel92/vim-autoformat')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
" plugin settings
" deoplete
call deoplete#enable()
" deoplete tern
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'

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

