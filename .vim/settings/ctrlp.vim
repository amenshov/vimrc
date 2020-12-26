let g:ctrlp_max_files = 0
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:50'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

