local actions = require('telescope.actions') -- runtime (plugin) exists somwhere as lua/telescope/actions
local actions_state = require('telescope.actions.state')
require('telescope').setup {
  defaults = {
    prompt_position = "top",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_defaults = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
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
        ["<C-q>"] = actions.smart_send_to_qflist,
        ["<M-q>"] = actions.smart_add_to_qflist,
        ["<C-a>"] = function() print(vim.inspect(actions_state.get_selected_entry())) end
      },
      n = {
        ["<C-x>"] = false,
        ["<C-q>"] = actions.smart_send_to_qflist,
        ["<M-q>"] = actions.smart_add_to_qflist,
        ["<C-a>"] = function() print(vim.inspect(actions_state.get_selected_entry())) end
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
require('telescope').load_extension('media_files')
require("telescope").load_extension("git_worktree")
