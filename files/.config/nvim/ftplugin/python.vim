setlocal colorcolumn=80
setlocal textwidth=80
setlocal list
setlocal listchars=trail:·,tab:»·

nnoremap <C-s> :!flake8 %<cr>
map <F3> :!isort -ns __init__.py %<cr>
inoremap <C-s> import pdb; pdb.set_trace()
