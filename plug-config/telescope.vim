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
nnoremap <leader>fh :lua require('telescope.builtin').help_tags()<CR>

nnoremap <leader>gc :lua require('telescope.builtin').git_commits()<CR>

" From The Primeagen. I think this helps feed results from Telescope into the
" quickfix buffer, where they can be further manipulated.

lua << EOF
local actions = require('telescope.actions')
require('telescope').setup {
  defaults = {
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    prompt_prefix = '  ',
    selection_caret = ' ',
    color_devicons = true,

    file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

    mappings = {
      i = {
        ["<C-x>"] = false,
        -- ["<M-q>"] = actions.send_to_qflist,
        -- ["<C-q>"] = actions.send_selected_to_qflist,
        -- ["<C-q>"] = actions.add_to_qflist,
        -- ["<M-q>"] = actions.add_selected_to_qflist,
        ["<C-q>"] = actions.smart_send_to_qflist,
        ["<M-q>"] = actions.smart_add_to_qflist,
      },
      n = {
        ["<C-x>"] = false,
        -- ["<M-q>"] = actions.send_to_qflist,
        -- ["<C-q>"] = actions.send_selected_to_qflist,
        -- ["<C-q>"] = actions.add_to_qflist,
        -- ["<M-q>"] = actions.add_selected_to_qflist,
        ["<C-q>"] = actions.smart_send_to_qflist,
        ["<M-q>"] = actions.smart_add_to_qflist,
      },
    }
  },
  extensions = {
      fzy_native = {
          override_generic_sorter = false,
          override_file_sorter = true,
      }
  }
}
require('telescope').load_extension('fzy_native')

--local M = {}
--M.git_branches = function() 
--    require("telescope.builtin").git_branches({
--        attach_mappings = function(prompt_bufnr, map) 
--            map('i', '<C-m>', actions.git_merge_branch)
--            map('n', '<C-m>', actions.git_merge_branch)
--            map('i', '<C-r>', actions.git_rebase_branch)
--            map('n', '<C-r>', actions.git_rebase_branch)
--            return true
--        end
--    })
--end
--
--return M
EOF
