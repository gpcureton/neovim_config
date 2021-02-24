"nnoremap <C-m> :lua require("harpoon.manage-a-mark").add_file()<CR>
"nnoremap <C-e> :lua require("harpoon.ui").toggle_quick_menu()<CR>
"nnoremap <C-h> :lua require("harpoon.ui").nav_file(1)<CR>
"nnoremap <C-t> :lua require("harpoon.ui").nav_file(2)<CR>
"nnoremap <C-n> :lua require("harpoon.ui").nav_file(3)<CR>
"nnoremap <C-s> :lua require("harpoon.ui").nav_file(4)<CR>
"nnoremap <C-g> :lua require("harpoon.manage-a-mark").rm_file()<CR>
"nnoremap <C-l> :lua require("harpoon.manage-a-mark").shorten_list()<CR>
"nnoremap <leader>r :lua require("harpoon.manage-a-mark").promote()<CR>
"nnoremap <leader>tu :lua require("harpoon.terminal").gotoTerminal(1)<CR>
"nnoremap <leader>te :lua require("harpoon.terminal").gotoTerminal(2)<CR>
"nnoremap <leader>cu :lua require("harpoon.terminal").sendCommand(1, 1)<CR>
"nnoremap <leader>ce :lua require("harpoon.terminal").sendCommand(1, 2)<CR>
"
"
lua << EOF
require('harpoon').setup {}
EOF
