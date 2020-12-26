" source all files in ~/.vim/settings
for f in split(glob('~/.vim/settings/*.vim'), '\n')
    exe 'source' f
endfor

