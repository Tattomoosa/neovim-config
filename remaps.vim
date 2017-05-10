" leader
let mapleader = "\<Space>"
" normal mode - leader

" normal mode
nnoremap <Esc> :nohl<CR>
nnoremap j gj
nnoremap k gk
nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>

" insert mode
inoremap (<BS> (
inoremap (<CR> (<CR>)<C-o>O

"visual mode
vnoremap < <gv
vnoremap > >gv
" plugin mappings
map <C-n> :NERDTreeToggle<CR>
