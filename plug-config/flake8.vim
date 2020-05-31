let g:flake8_show_quickfix=1  " show (default)
let g:flake8_show_in_gutter=1  " show
let g:flake8_show_in_file=1  " show
"let g:flake8_error_marker='EE'     " set error marker to 'EE'
let g:flake8_error_marker=''     " set error marker to 'EE'
let g:flake8_warning_marker=''   " set warning marker to 'WW'
let g:flake8_pyflake_marker=''    " disable PyFlakes warnings
"let g:flake8_complexity_marker=''  " disable McCabe complexity warnings
"let g:flake8_naming_marker=''      " disable naming warnings
highlight link Flake8_Error      Error
highlight link Flake8_Warning    WarningMsg
highlight link Flake8_Complexity WarningMsg
highlight link Flake8_Naming     WarningMsg
highlight link Flake8_PyFlake    WarningMsg
