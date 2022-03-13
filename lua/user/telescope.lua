local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
local actions = require "telescope.actions"

-- Shorten function name
-- local opts = { noremap = true, silent = true }
-- local keymap = vim.api.nvim_set_keymap
-- keymap("n", "<S-l>", ":bnext<CR>", opts)

telescope.setup {
    defaults = {
        -- prompt_prefix = " ",
        -- selection_caret = " ",
        prompt_prefix = '  ',
        selection_caret = ' ',
        vimgrep_arguments = {
           'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
        },
        path_display = { "smart" },
        set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,

        mappings = {
            i = {
                ["<C-c>"] = actions.close,

                ["<C-n>"] = actions.cycle_history_next,
                ["<C-p>"] = actions.cycle_history_prev,

                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,


                ["<Down>"] = actions.move_selection_next,
                ["<Up>"] = actions.move_selection_previous,

                ["<CR>"] = actions.select_default,
                ["<C-x>"] = actions.select_horizontal,
                ["<C-v>"] = actions.select_vertical,
                ["<C-t>"] = actions.select_tab,

                ["<C-u>"] = actions.preview_scrolling_up,
                ["<C-d>"] = actions.preview_scrolling_down,

                ["<PageUp>"] = actions.results_scrolling_up,
                ["<PageDown>"] = actions.results_scrolling_down,

                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
                -- ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                ["<C-q>"] = actions.smart_send_to_qflist,
                -- ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                ["<M-q>"] = actions.smart_add_to_qflist,
                ["<C-l>"] = actions.complete_tag,
                ["<C-?>"] = actions.which_key, -- keys from pressing <C-/>
            },

            n = {
                ["<esc>"] = actions.close,

                ["<CR>"] = actions.select_default,
                ["<C-x>"] = actions.select_horizontal,
                ["<C-v>"] = actions.select_vertical,
                ["<C-t>"] = actions.select_tab,

                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
                -- ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                ["<C-q>"] = actions.smart_send_to_qflist,
                -- ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                ["<M-q>"] = actions.smart_add_to_qflist,

                ["j"] = actions.move_selection_next,
                ["k"] = actions.move_selection_previous,
                ["H"] = actions.move_to_top,
                ["M"] = actions.move_to_middle,
                ["L"] = actions.move_to_bottom,

                ["<Down>"] = actions.move_selection_next,
                ["<Up>"] = actions.move_selection_previous,
                ["gg"] = actions.move_to_top,
                ["G"] = actions.move_to_bottom,

                ["<C-u>"] = actions.preview_scrolling_up,
                ["<C-d>"] = actions.preview_scrolling_down,

                ["<PageUp>"] = actions.results_scrolling_up,
                ["<PageDown>"] = actions.results_scrolling_down,

                ["?"] = actions.which_key,
            },
        },
    },
    pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
    },
    extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --   extension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
    },
}

-- 🔭 Extensions --
-- https://github.com/nvim-telescope/telescope-file-browser.nvim
-- require("telescope").load_extension "file_browser"

-- https://github.com/nvim-telescope/telescope-ui-select.nvim
-- require("telescope").load_extension "ui-select"

-- https://github.com/nvim-telescope/telescope-fzf-native.nvim#telescope-fzf-nativenvim
require("telescope").load_extension "fzf"

-- https://github.com/dhruvmanila/telescope-bookmarks.nvim
-- <space>b
-- require("telescope").load_extension "bookmarks"

-- https://github.com/jvgrootveld/telescope-zoxide
-- <leader>z
-- require("telescope").load_extension "zoxide"

-- https://github.com/cljoly/telescope-repo.nvim
-- <leader>rl
-- require("telescope").load_extension "repo"

-- telescope.extensions.notify.notify(<opts>)
telescope.load_extension('notify')

-- https://github.com/ahmedkhalf/project.nvim
telescope.load_extension('projects')

-- https://github.com/AckslD/nvim-neoclip.lua
-- <C-n>
telescope.load_extension("neoclip")

-- GitHub CLI → local version
require("telescope").load_extension "gh"

-- Telescope keymaps
-- keymap("n", "<leader>te", ":Telescope<CR>", opts)
keymap("n", "<leader>te", ":Telescope ", opts)

-- Using lua functions
keymap("n", "<Leader>n", ":lua require('telescope').extensions.notify.notify()<CR>", opts)
keymap("n", "<Leader>f", ":lua require('telescope.builtin').find_files()<CR>", opts)
-- keymap("n", "<leader>fb", ":lua require('telescope.builtin').buffers()<CR>", opts)
keymap("n", "<leader>fb", ":lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>", opts)
keymap("n", "<leader>fg", ":lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "<leader>fs", ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<CR>", opts)
keymap("n", "<leader>fw", ":lua require('telescope.builtin').grep_string { search = vim.fn.expand('<cword>') }<CR>", opts)
keymap("n", "<leader>fh", ":lua require('telescope.builtin').help_tags()<CR>", opts)
keymap("n", "<leader>fe", ":lua require('telescope.builtin').file_browser({cwd = vim.fn.expand('%:p:h')})<CR>", opts)
--
keymap("n", "<leader>p", ":lua require('telescope.builtin').git_files()<CR>", opts)
keymap("n", "<leader>gcr", ":lua require('telescope.builtin').git_commits()<CR>", opts)
keymap("n", "<leader>gcb", ":lua require('telescope.builtin').git_bcommits()<CR>", opts)
keymap("n", "<leader>gst", ":lua require('telescope.builtin').git_stash()<CR>", opts)
keymap("n", "<leader>gb", ":lua require('telescope.builtin').git_branches()<CR>", opts)
--
keymap("n", "<leader>gw", ":lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", opts)
keymap("n", "<leader>gwc", ":lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>", opts)

local fuzzy_buf_opt = require('telescope.themes').get_dropdown({height=10, previewer=false})
keymap("n", "<leader>ffb", ":lua require('telescope.builtin').current_buffer_fuzzy_find(fuzzy_buf_opt)<CR>", opts)


-- mappings.curr_buf = function()
--   local opt = require('telescope.themes').get_dropdown({height=10, previewer=false})
--   require('telescope.builtin').current_buffer_fuzzy_find(opt)
-- end
