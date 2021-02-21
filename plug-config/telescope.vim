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

" Default configuration
"lua << EOF
"local actions = require('telescope.actions')
"require('telescope').setup{
  "defaults = {
    "vimgrep_arguments = {
      "'rg',
      "'--color=never',
      "'--no-heading',
      "'--with-filename',
      "'--line-number',
      "'--column',
      "'--smart-case'
    "},
    "prompt_position = "bottom",
    "prompt_prefix = ">",
    "initial_mode = "insert",
    "selection_strategy = "reset",
    "sorting_strategy = "descending",
    "layout_strategy = "horizontal",
    "layout_defaults = {
      "-- TODO add builtin options.
    "},
    "file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    "file_ignore_patterns = {},
    "generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    "shorten_path = true,
    "winblend = 0,
    "width = 0.75,
    "preview_cutoff = 120,
    "results_height = 1,
    "results_width = 0.8,
    "border = {},
    "borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},
    "color_devicons = true,
    "use_less = true,
    "set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    "file_previewer = require'telescope.previewers'.cat.new, -- For buffer previewer use `require'telescope.previewers'.vim_buffer_cat.new`
    "grep_previewer = require'telescope.previewers'.vimgrep.new, -- For buffer previewer use `require'telescope.previewers'.vim_buffer_vimgrep.new`
    "qflist_previewer = require'telescope.previewers'.qflist.new, -- For buffer previewer use `require'telescope.previewers'.vim_buffer_qflist.new`

    "-- Developer configurations: Not meant for general override
    "buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  "}
"}
"EOF
