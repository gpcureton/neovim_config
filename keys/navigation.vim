" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Navigating items in the quickfix list
nnoremap <M-k> :cnext<CR>
nnoremap <M-j> :cprev<CR>
" Navigating items in the location list
nnoremap <leader>j :lnext<CR>
nnoremap <leader>k :lprev<CR>

" Navigating items in the location list
" Some keymapping to handle buffer navigation
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
"
:nmap <C-p> :bNext<cr>
:nmap <C-n> :bnext<cr>
:map <C-p> :bNext<cr>
:map <C-n> :bnext<cr>

"nnoremap <leader>h :wincmd h<CR>
"nnoremap <leader>j :wincmd j<CR>
"nnoremap <leader>k :wincmd k<CR>
"nnoremap <leader>l :wincmd l<CR>

nnoremap <C-q> :call ToggleQFList()<CR>
nnoremap <C-l> :call ToggleLocList()<CR>

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

"fun! ToggleLocList(global)
    "if g:the_primeagen_qf == 1
        "if a:global
            "let g:the_primeagen_qf_g = 0
            "copen
        "else
            "let g:the_primeagen_qf_l = 0
            "lopen
        "endif
    "else
        "if a:global
            "let g:the_primeagen_qf_g = 0
            "cclose
        "else
            "let g:the_primeagen_qf_l = 0
            "lclose
        "endif
    "endif
"endfun
