" https://vim.fandom.com/wiki/Remove_unwanted_spaces
function! <SID>TrimSpaces()
    let _pos = getpos('.')
    let _s = @/
    %s/\s\+$//e
    let @/ = _s
    call setpos('.', _pos)
endfunction

command! TrimSpaces call <SID>TrimSpaces()

nnoremap <silent> <F2> :TrimSpaces<CR>

