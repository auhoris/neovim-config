set wildmenu

set noswapfile
" Settings for line numbers
set number
set relativenumber

" Highlighting code
syntax on

" Make sure that backspace works
set backspace=indent,eol,start

filetype plugin indent on
set encoding=utf-8
set t_Co=256
set nocompatible

set statusline=
set ruler              			" Show the cursor position all the time

set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set smartindent                         " Makes indenting smart
set showtabline=2                       " Always show tabs
"set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" Убрать звуки ошибок
set t_vb=
set visualbell t_vb=

" Подсветка при поиске
set hlsearch
set incsearch

" Autoindent
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=0 noexpandtab

" Set mouse on
set mouse=a

" Enable theming support
"if (has("termguicolors"))
"set termguicolors
"endif

" Подсветка строки
set cursorline

" Автообновление изменённых файлов при открытии
set autoread
au FocusGained,BufEnter * checktime

" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Display different types of white spaces
set list
set listchars=tab:›\ ,precedes:‹,nbsp:·,trail:·

set splitbelow splitright

let g:airline#extensions#branch#enabled = 1

" Autoformatting on save
"autocmd BufWritePost * execute "normal gg=G"
function ShowSpaces(...)
  let @/='\v(\s+$)|( +\ze\t)'
  let oldhlsearch=&hlsearch
  if !a:0
    let &hlsearch=!&hlsearch
  else
    let &hlsearch=a:1
  end
  return oldhlsearch
endfunction

function TrimSpaces() range
  let oldhlsearch=ShowSpaces(1)
  execute a:firstline.",".a:lastline."substitute ///gec"
  let &hlsearch=oldhlsearch
endfunction

command -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()
"nnoremap <F12>     :ShowSpaces 1<CR>
"nnoremap <leader><space>   m`:TrimSpaces<CR>``
"vnoremap <leader> :TrimSpaces<CR>
