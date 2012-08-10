set nocompatible
filetype on
filetype plugin on
set cmdheight=2
set number

map <F2> :s/\([.!?]\)[])"']*\($\\|[ ]\)/\1\r/g<CR>
