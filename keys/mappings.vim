" Set leaderkey
let g:mapleader=','

" Use control-c instead of escape
nnoremap <C-c> <Esc>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Mappings for save-file and forse quit
map <C-s> :w!<CR>
nnoremap <C-q> :q!<CR>


" Search n chars
map <Leader>s <Plug>(easymotion-sn)
omap <Leader>s <Plug>(easymotion-tn)
" Search 1 char
nmap f <Plug>(easymotion-overwin-f)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Toggle
nnoremap <C-n> :NERDTreeToggle<CR>

" Window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use ctrl + arrows to resize windows
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

"Splitting
map <C-w>v :vs <C-r>=expand("%:p:h")<CR>/
map <C-w>s :s <C-r>=expand("%:p:h")<CR>/

" Buffer switching
map <Leader>te :tabnew <C-r>=expand("%:p:h")<CR>/
map <leader>1 1gt<CR>
map <leader>2 2gt<CR>
map <leader>3 3gt<CR>
map <leader>4 4gt<CR>
map <leader>5 5gt<CR>
map <leader>6 6gt<CR>
map <leader>7 7gt<CR>
map <leader>8 8gt<CR>
map <leader>9 9gt<CR>
map <leader>0 10gt<CR>

map <Tab> :tabn<CR>
map <S-Tab> :tabp<CR>

" Mapping to remove highlightning after search was done
nnoremap <Space> :noh<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Fzf mappings
"nnoremap <C-f> :FZF<CR>
"let g:fzf_action = {
  "\ 'ctrl-t': 'tab split',
  "\ 'ctrl-v': 'vsplit'
  "\}
"map <leader>b :Buffers<CR>
