" filetype
syntax enable filetype plugin on
filetype indent on

" mouse on macosx
set mouse=a
" tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2

" line numbers
set relativenumber
set number

" cursor
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

" autocomplete
set wildmenu
" show matching [{()}]
set showmatch
set mps+=<:>
set mat=5
" show commands
set showcmd

" searching
set incsearch
set ignorecase
set smartcase
set hlsearch

" don't beep
set visualbell
set noerrorbells

" set terminal's title
set title

" python support ?
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = 'usr/local/bin/python3'

if has("termguicolors")
  set termguicolors
endif

colorscheme gruvbox 
set background=dark

highlight CWD ctermfg=grey ctermbg=black guibg=#504945 guifg=#000000 gui=bold
highlight File ctermfg=red ctermbg=black guibg=#504945 guifg=#cbe1b1
 
highlight ColorColumn ctermbg=black guibg=#706965

highlight lineNr guibg=#504945 guifg=grey
highlight CursorLineNr guibg=#222222 guifg=white gui=bold

" less obtrusive search highlighting
highlight Search ctermbg=none ctermfg=red cterm=italic,underline gui=bold,underline guibg=#555599 guifg=white


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

"indenting
set autoindent
set smartindent
set smarttab

" wrapping and stuff
set showbreak=\ ↳\ ↳\ ↳\ 
set breakindent
set breakindentopt=sbr,shift:4
set nolist
set wrap
set linebreak breakat&vim

set list
set listchars=tab:\|\ ,trail:X

" puts return character in numberline
set cpo=n

" enable fenced code block syntax highlighting in markdown
let g:markdown_fenced_languages = ['html', 'javascript', 'js=javascript']
