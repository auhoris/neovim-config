if exists('g:vscode')
	source $HOME/.config/nvim/vscode/settings.vim
	source $HOME/.config/nvim/vscode/easymotion.vim
endif

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
"source $HOME/.config/nvim/general/statusline.vim

" COC settings
source $HOME/.config/nvim/plug-config/coc.vim
" Ranger
source $HOME/.config/nvim/plug-config/rnvimr.vim
" Nerdcommenter
source $HOME/.config/nvim/nerdtree/nerdcommenter.vim
"NERDTreeToggle
source $HOME/.config/nvim/nerdtree/nerttree_tab.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/fzf/fzf.vim
"source $HOME/.config/nvim/themes/onedark.vim

" For powerline looking good
let g:airline_powerline_fonts = 1


" Theme for lightline
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

set comments=sl:/*,mb:**,elx:*/

lua require 'nvim-treesitter.configs'.setup {highlight = {enable = true}}

" Set colorsheme
set termguicolors
colorscheme OceanicNext
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
