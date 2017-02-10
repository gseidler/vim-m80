" File ~/.vim/ftplugin/m80.vim
" Maintainer: Gustavo Seidler <gseidler@gmail.com>
" Last Update: 2016 Dec 21
" Specific options for m80 assembly .mac files

if exists("b:did_ftplugin")
    finish
endif

" syntax, highlighting and spelleing
setlocal colorcolumn=132

" tabs and indenting
setlocal tabstop=8
setlocal softtabstop=8
setlocal shiftwidth=8

" mapping
nnoremap <leader>i- o; <esc>129a-<esc>j0
nnoremap <leader>a- o; <esc>129a-<esc>a<cr>

" reading and writing files
setlocal fileformat=dos

" multi byte characters
setlocal fileencoding=latin1

let b:did_ftplugin=1

