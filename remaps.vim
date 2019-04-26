""""""""""""""""""""""""""""""""""""""""
" LEADER
""""""""""""""""""""""""""""""""""""""""

let mapleader = "\<Space>"
" normal mode - leader

nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>

nnoremap <leader>Y gg"+yG``
nnoremap <leader>w :wall<CR>

""""""""""""""""""""""""""""""""""""""""
" NORMAL MODE
""""""""""""""""""""""""""""""""""""""""

nnoremap <Esc> :nohl<CR>
" everyone tells you to remap j to gj but they be dumb don't do it
" nnoremap j gj
" nnoremap k gk

" buffers
nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>
" tabs
nnoremap [t :tabp<CR>
nnoremap ]t :tabn<CR>

""""""""""""""""""""""""""""""""""""""""
" INSERT MODE
""""""""""""""""""""""""""""""""""""""""

" for functions and stuff
inoremap (<CR> (<CR>)<C-o>O
inoremap [<CR> [<CR>]<C-o>O
inoremap {<CR> {<CR>}<C-o>O

imap ></ ></<C-[>F>a

"visual mode
vnoremap < <gv
vnoremap > >gv
" plugin mappings
map <C-n> :NERDTreeToggle<CR>
