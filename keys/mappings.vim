"-----------------------------------------------------------------------------
"                               Key Remapping
"-----------------------------------------------------------------------------

" Reloading the config file
map <leader>r :source ~/.config/nvim/init.vim<CR>
"map <C-r> :source ~/.config/nvim/init.vim<CR>
"map <M-r> :source ~/.config/nvim/init.vim<CR>

" Use ; for commands.
"nnoremap ; :

" set leader key
" Leaving set to '' results in using the default '\'
let mapleader = ''

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

nnoremap <leader>nh :nohlsearch<CR>




"" Better nav for omnicomplete
"inoremap <expr> <c-j> ("\<C-n>")
"inoremap <expr> <c-k> ("\<C-p>")

"" Use alt + hjkl to resize windows
"nnoremap <M-j>    :resize -2<CR>
"nnoremap <M-k>    :resize +2<CR>
"nnoremap <M-h>    :vertical resize -2<CR>
"nnoremap <M-l>    :vertical resize +2<CR>

"" I hate escape more than anything else
"inoremap jk <Esc>
"inoremap kj <Esc>

"" Easy CAPS
"inoremap <c-u> <ESC>viwUi
"nnoremap <c-u> viwU<Esc>

"" TAB in general mode will move to text buffer
"nnoremap <TAB> :bnext<CR>
"" SHIFT-TAB will go back
"nnoremap <S-TAB> :bprevious<CR>

"" Alternate way to save
"nnoremap <C-s> :w<CR>
"" Alternate way to quit
"nnoremap <C-Q> :wq!<CR>
"" Use control-c instead of escape
"nnoremap <C-c> <Esc>
"" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"" Better tabbing
"vnoremap < <gv
"vnoremap > >gv

"" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"nnoremap <Leader>o o<Esc>^Da
"nnoremap <Leader>O O<Esc>^Da
