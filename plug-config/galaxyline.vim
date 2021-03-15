" Plugin: Galaxyline -------------------------- {{{

function! ConfigStatusLine()
  lua require('plugins.galaxyline')
  "lua require('plugins.galaxyline_kraftwerk28')
  "lua require('plugins.galaxyline_horseinthesky')
endfunction

augroup status_line_init
  autocmd!
  autocmd VimEnter * call ConfigStatusLine()
augroup END
