" setting
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd


" 見た目系
set number
set cursorline
set cursorcolumn
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk


" Tab系
set list listchars=tab:\▸\-
set expandtab
set tabstop=2
set shiftwidth=2


" 検索系
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

let scheme = 'zenburn'
augroup guicolorscheme
  autocmd!
    execute 'autocmd GUIEnter * colorscheme' scheme
augroup END
execute 'colorscheme' scheme

call plug#begin('~/.vim/plugged')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
call plug#end()

