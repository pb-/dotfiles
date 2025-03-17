"NeoBundle Scripts-----------------------------
if has('vim_starting')
  " Required:
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'ervandew/supertab'
NeoBundle 'morhetz/gruvbox'

NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'zchee/deoplete-jedi'

" Golang
" NeoBundle 'zchee/deoplete-go', {'build': {'unix': 'make'}}
" NeoBundle 'fatih/vim-go'

" Elm
" NeoBundle 'ElmCast/elm-vim'

" Clojure
NeoBundle 'Olical/conjure', {'tag': 'v4.23.0'}
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'guns/vim-sexp'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

set termguicolors
syntax on
colorscheme gruvbox
set background=dark

set mouse=v
set number
set ruler
set expandtab
set shiftwidth=4
set tabstop=4
set showcmd
set list
set listchars=tab:▸\ ,trail:•
set directory=/tmp//
set ignorecase
set smartcase
set clipboard+=unnamed

" webpack hot reloading breaks otherwise
set backupcopy=yes

nnoremap <C-j> 3j3<C-e>
nnoremap <C-k> 3k3<C-y>
nnoremap <A-j> :m .+1<CR>
nnoremap <A-k> :m .-2<CR>
vnoremap <A-j> :m '>+1<CR>gv
vnoremap <A-k> :m '<-2<CR>gv

imap <ESC> <NOP>
inoremap jk <ESC>
cmap <ESC> <NOP>
cnoremap jk <C-c>

" make jedi globally available in every virtualenv
let g:deoplete#enable_at_startup=1

" close preview window when leaving insert mode
autocmd InsertLeave * pclose

" Default <M-{> and <M-}> doesn't seem to work
let g:sexp_mappings = {
\ 'sexp_flow_to_prev_open': '<M-o>',
\ 'sexp_flow_to_next_close': '<M-p>',
\ }
