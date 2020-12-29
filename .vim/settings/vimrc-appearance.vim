" display tabs and trailing whitespaces
set list listchars=tab:→·,trail:·,extends:»,precedes:«,nbsp:·

set number
set showcmd
set showmode

set cursorline
set colorcolumn=120 " 120-character column limit

set wrap
set linebreak
set textwidth=0
set wrapmargin=0

" https://vim.fandom.com/wiki/Disable_beeping
set noerrorbells  visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" colorscheme
set termguicolors
set background=dark
colorscheme solarized8_flat

