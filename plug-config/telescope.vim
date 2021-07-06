lua require("core")
"
" Find files using Telescope command-line sugar.
nnoremap <leader>te :Telescope
"nnoremap <leader>f <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using lua functions
nnoremap <Leader>f :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>fb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fs :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>fw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>fh :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>fe :lua require('telescope.builtin').file_browser({cwd = vim.fn.expand("%:p:h")})<CR>

nnoremap <leader>p :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>gcr :lua require('telescope.builtin').git_commits()<CR>
nnoremap <leader>gcb :lua require('telescope.builtin').git_bcommits()<CR>
nnoremap <leader>gst :lua require('telescope.builtin').git_stash()<CR>
nnoremap <leader>gb :lua require('telescope.builtin').git_branches()<CR>

nnoremap <leader>gw :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
nnoremap <leader>gwc :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>

nnoremap <leader>vc :lua require('telescope').extensions.vimspector.configurations()<CR>
