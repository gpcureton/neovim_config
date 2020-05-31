" ### https://github.com/airblade/vim-gitgutter
"
" # The colour of the sign column
"let g:gitgutter_override_sign_column_highlight = 1
"let g:gitgutter_sign_allow_clobber = 1
"highlight SignColumn ctermbg=black    " terminal Vim
"
" # sign colours
highlight GitGutterAdd          guifg=green guibg=NONE gui=bold " an added line
highlight GitGutterChange       guifg=goldenrod guibg=NONE gui=bold " a changed line
highlight GitGutterDelete       guifg=red guibg=NONE gui=bold    " at least one removed line
highlight GitGutterChangeDelete gui=bold                          " a changed line followed by at least one removed line

" # sign symbols
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
"let g:gitgutter_sign_added = '+'
"let g:gitgutter_sign_modified = '~'
"let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = 'ww'
