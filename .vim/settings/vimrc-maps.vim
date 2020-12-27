" https://vi.stackexchange.com/questions/24925/usage-of-timeoutlen-and-ttimeoutlen
set timeout timeoutlen=500

" fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" https://vim.fandom.com/wiki/Moving_lines_up_or_down
nnoremap <C-s-down> :m .+1<CR>==
nnoremap <C-s-up> :m .-2<CR>==
inoremap <C-s-down> <Esc>:m .+1<CR>==gi
inoremap <C-s-up> <Esc>:m .-2<CR>==gi
vnoremap <C-s-down> :m '>+1<CR>gv=gv
vnoremap <C-s-up> :m '<-2<CR>gv=gv

" clear search by //
nmap <silent> // :nohlsearch<CR>

" quick fix window
noremap <F10> :copen 20<CR>

