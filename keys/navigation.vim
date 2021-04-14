" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"nnoremap <leader>h :wincmd h<CR>
"nnoremap <leader>j :wincmd j<CR>
"nnoremap <leader>k :wincmd k<CR>
"nnoremap <leader>l :wincmd l<CR>

" Quickfix and Location lists
nnoremap <C-q> :call ToggleQFList()<CR>
nnoremap <M-l> :call ToggleLocList()<CR>

let g:the_primeagen_qf = 1 " my edit
let g:the_primeagen_qf_l = 0 " Local (location list)
let g:the_primeagen_qf_g = 0 " Global (quickfix list)

fun! ToggleQFList()
    if g:the_primeagen_qf_g == 0
        let g:the_primeagen_qf_g = 1
        copen
    else
        let g:the_primeagen_qf_g = 0
        cclose
    endif
endfun

fun! ToggleLocList()
    if g:the_primeagen_qf_l == 0
        let g:the_primeagen_qf_l = 1
        lopen
    else
        let g:the_primeagen_qf_l = 0
        lclose
    endif
endfun

" Navigating items in the quickfix list
nnoremap <M-k> :cprev<CR>
nnoremap <M-j> :cnext<CR>
" Navigating items in the location list
nnoremap <leader>k :lprev<CR>
nnoremap <leader>j :lnext<CR>

" Close the current buffer without closing the window.
nnoremap <leader>bc :Bclose<CR>
" Delete the current buffer, closing the window.
nnoremap <leader>bd :bdelete<CR>

" Some keymapping to handle buffer navigation
:nmap <C-p> :bNext<cr>
:nmap <C-n> :bnext<cr>
:map <C-p> :bNext<cr>
:map <C-n> :bnext<cr>

":imap <C-b> :buffers<cr>i
":nmap <C-b> :buffers<cr>
":map <C-b> :buffers<cr>

":imap <M-c> :buffer
":nmap <M-c> :buffer
":map <M-c> :buffer

" Beware! C-[ can emulate the Esc key, the reverse might also be true. Trying
" to hit Esc will result in :bnext or :bNext
":nmap <C-[> :bNext<cr>
":nmap <C-]> :bnext<cr>
":map <C-[> :bNext<cr>
":map <C-]> :bnext<cr>
