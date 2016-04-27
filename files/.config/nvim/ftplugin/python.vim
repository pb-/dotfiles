setlocal colorcolumn=80
setlocal textwidth=80
setlocal list
setlocal listchars=trail:·,tab:»·

map <F2> :!flake8 %<cr>
map <F3> :!isort -ns __init__.py %<cr>
inoremap <F4> import pdb; pdb.set_trace()
