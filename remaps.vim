" leader
let mapleader = "\<Space>"
" normal mode - leader
" increment a single digit ?? to hex??

" normal mode
nnoremap <Esc> :nohl<CR>
nnoremap j gj
nnoremap k gk
nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>

" insert mode
inoremap (<BS> (
inoremap (<CR> (<CR>)<C-o>O

inoremap '+ ' +  + '<C-o>3h
inoremap "+ " +  + "<C-o>3h

"visual mode
vnoremap < <gv
vnoremap > >gv
" plugin mappings
map <C-n> :NERDTreeToggle<CR>
