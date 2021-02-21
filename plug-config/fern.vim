let g:fern#renderer = "nerdfont"
"let g:fern#renderer = "devicons"

" A CoC-Explorer like file drawer
nmap <leader>e :Fern . -drawer -toggle<CR>

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
