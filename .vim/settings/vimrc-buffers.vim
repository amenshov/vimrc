" See https://vim.fandom.com/wiki/Easier_buffer_switching
"
" Mappings to access buffers (don't use '\p' because a delay before pressing 'p' would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>

nnoremap <Leader>0 :10b<CR>

let c = 1
while c <= 500
  execute 'nnoremap <Leader>' . c . ' :' . c . 'b\<CR>'
  let c += 1
endwhile

