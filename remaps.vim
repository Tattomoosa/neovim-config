""""""""""""""""""""""""""""""""""""""""
" LEADER
""""""""""""""""""""""""""""""""""""""""

let mapleader = "\<Space>"
" normal mode - leader


" easy vimrc editing
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>

" yanks the whole file and returns cursor to where you were
nnoremap <leader>y gg"*yG``

" saves all open buffers
nnoremap <leader>w :wall<CR>

" blank lines
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>
nnoremap <leader><leader> :nohl<CR>

" toggle comments in NERDCommenter
" nmap <leader><leader> <Plug>NERDCommenterToggle


let g:minimap_toggle='<leader>m'

nnoremap vA ggVG

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
" Vim's own manual recommends this remapping since Y is by default the 
" same as yy and that's nonsense.
nnoremap Y y$

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

""""""""""""""""""""""""""""""""""""""""
" TERMINAL MODE
""""""""""""""""""""""""""""""""""""""""
tnoremap <C-w> <C-\><C-n><C-w>
tnoremap <C-w>: <C-\><C-n>:
tnoremap <C-w>N <C-\><C-n>
