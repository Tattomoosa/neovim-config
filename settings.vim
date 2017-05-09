" filetype
syntax enable
filetype plugin on
filetype indent on
" tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
" line numbers
set relativenumber
set number
" cursor
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
" autocomplete
set wildmenu
" show matching [{()}]
set showmatch
" searching
set incsearch
set ignorecase
set smartcase
set hlsearch

if has("nvim")
  set termguicolors
endif

colorscheme gruvbox 
set background=dark

highlight CWD ctermfg=grey ctermbg=black guibg=#504945 guifg=#282828
highlight File ctermfg=red ctermbg=black guibg=#504945 guifg=#fbf1c1 gui=bold 

" statusline
set statusline=%#CWD#
set statusline+=%{getcwd()}/
set statusline+=%#File#
set statusline+=%f 
set statusline+=%#CWD#
set statusline+=%r
set statusline+=%m
set statusline+=%h
set statusline+=%=
set statusline+=%{fugitive#statusline()}
" buffers
set hidden " allows hidden unsaved buffers
set confirm " won't quit with unsaved buffers
" splits
set splitbelow
set splitright

