" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Plugin installing section
call plug#begin("~/.vim/plugged")

if exists('g:vscode')
    " Easy motion for VSCode
    Plug 'ChristianChiarulli/vscode-easymotion'
endif

Plug 'tomasiser/vim-code-dark'
Plug 'joshdick/onedark.vim'
"Plug 'arcticicestudio/nord-vim'
Plug 'sainnhe/gruvbox-material'
"Plug 'morhetz/gruvbox'
"Plug 'christianchiarulli/nvcode-color-schemes.vim'
"Plug 'micha/vim-colors-solarized'
"Plug 'overcache/NeoSolarized'
Plug 'mhartington/oceanic-next'
"Plug 'ayu-theme/ayu-vim'
Plug 'glepnir/oceanic-material'
Plug 'sainnhe/sonokai'

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Errors highlight
"Plug 'dense-analysis/ale'

" Atou-pairs
"Plug 'jiangmiao/auto-pairs'

" 42-header
Plug 'pbondoer/vim-42header'

" Easymotion
Plug 'easymotion/vim-easymotion'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
"Plug 'jackguo380/vim-lsp-cxx-highlight'

" Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/nvim-bufferline.lua'

"Plug 'tpope/vim-commentary'

" Ranger settings
"Plug 'francoiscabrol/ranger.vim'
"Plug 'rbgrouleff/bclose.vim'

"Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

"Plug 'ThePrimeagen/vim-be-good'

" Snippets
Plug 'honza/vim-snippets'

" Better Highlighting
Plug 'nvim-treesitter/nvim-treesitter'

Plug 'preservim/nerdcommenter'

" Debugging
"Plug 'puremourning/vimspector'

call plug#end()
