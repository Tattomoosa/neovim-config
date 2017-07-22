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
	" syntax
	call dein#add('pangloss/vim-javascript')
	call dein#add('chemzqm/vim-jsx-improve')
	call dein#add('elzr/vim-json')
	call dein#add('cakebaker/scss-syntax.vim')
	" other
	call dein#add('kien/ctrlp.vim')
	call dein#add('scrooloose/nerdtree')
	" git
	call dein#add('airblade/vim-gitgutter')
	call dein#add('tpope/vim-fugitive')
	call dein#add('airblade/vim-rooter')
	" completion
	call dein#add('Shougo/deoplete.nvim')
	call dein#add('carlitux/deoplete-ternjs')
	call dein#add('ternjs/tern_for_vim.git')
	call dein#add('ervandew/supertab')
	call dein#add('jiangmiao/auto-pairs')
	call dein#add('docunext/closetag.vim')
	" display
	call dein#add('ap/vim-css-color')
	call dein#add('blueyed/vim-diminactive')
	" colorschemes
	call dein#add('morhetz/gruvbox')
	" comments
	call dein#add('tpope/vim-commentary')
	" formatting
	call dein#add('junegunn/vim-easy-align')
	call dein#add('chiel92/vim-autoformat')
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
	\ 'javascript.jsx'
	\ ]

"ctrl p
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*

"closetag
:au Filetype html,xml,xsl,jsx source ~/.config/nvim/plugins/repos/github.com/docunext/closetag.vim/plugin/closetag.vim

source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/remaps.vim
