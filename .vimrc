set nocompatible

" no swap files
set noswapfile
set nobackup
set nowb

" persistent undo
if has('persistent_undo')
    if !isdirectory('~/.vim/undo')
        silent !mkdir ~/.vim/undo > /dev/null 2>&1
    endif

    set undodir=~/.vim/undo
    set undofile
endif

" scrolling
set scrolloff=10

" security
set modelines=0
set nomodeline

" basic settings and plugins
source ~/.vim/plugins.vim

" custom and plugin specific settings
source ~/.vim/settings.vim

