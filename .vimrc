set nocompatible
filetype on
filetype plugin on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set cmdheight=2
set number

map <F2> :s/\([.!?]\)[])"']*\($\\|[ ]\)/\1\r/g<CR>
