"
" Enable basic formatting when a filetype is not found. Disabled by default.
"

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

"
" Run all enabled formatters (by default Neoformat stops after the first formatter succeeds)
"
let g:neoformat_run_all_formatters = 1

let g:neoformat_enabled_C = ['cgpc']
let g:neoformat_C_cgpc = {
            \ 'exe': 'clangd-format',
            \ 'args': ['--style=Webkit']
            \ }

