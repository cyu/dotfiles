" Needed on some linux distros.  " see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
"filetype on
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set ai
set et
set ts=2
set sw=2
set number
set hidden
"set foldmethod=syntax

au BufNewFile,BufRead *.as set filetype=actionscript ts=4
au BufNewFile,BufRead *.json set filetype=javascript
au BufNewFile,BufRead *.jsfl set filetype=javascript
au BufNewFile,BufRead *.deface set filetype=eruby
au BufNewFile,BufRead *.php set ts=4

syn on
set bg=dark
colorscheme solarized

"Command-T plugin
nnoremap <silent> <C-t> :CommandT<CR>
nnoremap <silent> <leader>b :CommandTBuffer<CR>

"Trim trailing whitespace
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"Powerline
set rtp+=/Users/cyu/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
