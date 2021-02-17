" Find files using Telescope command-line sugar.
nnoremap <leader>te :Telescope
"nnoremap <leader>f <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using lua functions
nnoremap <Leader>f :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>p :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>fb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fs :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>fw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>

" From The Primeagen. I think this helps feed results from Telescope into the
" quickfix buffer, when they can be further manipulated.

lua << EOF
local actions = require('telescope.actions')
require('telescope').setup {
  defaults = {
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    prompt_prefix = ' >',
    color_devicons = true,

    mappings = {
      i = {
        ["<C-x>"] = false,
        ["<C-s>"] = actions.goto_file_selection_split,
        ["<C-q>"] = actions.send_to_qflist,
      },
    }
  }
}
EOF
