" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
"filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set ai
set bg=dark
set et
set ts=2
set number
set hidden

au BufRead *.as set filetype=actionscript ts=4
au BufRead *.json set filetype=javascript
au BufRead *.jsfl set filetype=javascript
au BufRead *.php set ts=4

syn on

map <C-t> :FufCoverageFile<CR>
