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
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'Valloric/YouCompleteMe'

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

nnoremap <C-j> 3j3<C-e>
nnoremap <C-k> 3k3<C-y>

" make jedi globally available in every virtualenv
let g:python_host_prog='/usr/bin/python'

" disable YCM for python and let jedi handle it
let g:ycm_filetype_blacklist={'python': 1}
