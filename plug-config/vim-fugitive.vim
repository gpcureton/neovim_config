" Sweet Sweet FuGITive
nmap <leader>gf :diffget //2<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gs :G<CR>

" These mappings use fzf-checkout
nnoremap <leader>gb :GBranches<CR> 
nnoremap <leader>gm :GBranches merge
nnoremap <leader>gr :GBranches rebase
"nnoremap <leader>gc :GBranches<CR>
nnoremap <leader>ga :Git fetch --all<CR>
"nnoremap <leader>grum :Git rebase upstream/master<CR>
"nnoremap <leader>grom :Git rebase origin/master<CR>

" These mappings use Telescope (tbc...)
