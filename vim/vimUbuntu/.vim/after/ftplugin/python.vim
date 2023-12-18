"Vim macros for python
setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
syntax enable
"search in files
command -nargs=1 Grep :!grep -r --include \*.py <f-args>

"Comment / Uncomment
map <buffer> <leader>c :s:^:# <CR>:noh<CR>
map <buffer> <leader>u :s:^# <CR>:noh<CR>

" command Reformat :!source ~/python-virtual-environments/tf23/bin/activate ; black -l 100 % 

map <buffer> <leader>b Oimport ipdb; ipdb.set_trace()<esc>
map <buffer> <leader>f ciwFalse<esc>
map <buffer> <leader>t ciwTrue<esc>
map <buffer> <leader>e bienumerate(<esc>$i)<esc>
