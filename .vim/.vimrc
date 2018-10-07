execute pathogen#infect()
syntax on

" Stuff for tabs
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set noexpandtab

" Show relative numbers
set relativenumber
set number

" Set insert cursor and make all cursors blinky
if has("autocmd")
    au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
    au InsertEnter,InsertChange *
        \ if v:insertmode == 'i' | 
        \   silent execute '!echo -ne "\e[5 q"' | redraw! |
        \ elseif v:insertmode == 'r' |
        \   silent execute '!echo -ne "\e[3 q"' | redraw! |
        \ endif
    au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

" My keybindings
let maplocalleader=","


" Check the symlink setup.
" silent! python check_syml.py


