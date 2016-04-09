setlocal colorcolumn=80
setlocal textwidth=80
setlocal list
setlocal listchars=trail:·,tab:»·

map <F2> :!flake8 %<cr>
map <F3> :!isort %<cr>
