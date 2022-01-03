local status_ok, notify = pcall(require, "notify")
if status_ok then
    vim.notify = notify
    notify("The Notify plugin has loaded correctly.")
else
	return
end


require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.indentline"
require "user.trouble"
require "user.todo-comments"
require "user.git-worktree"
require "user.symbols-outline"
require "user.vim-fugitive"
require "user.alpha"
require "user.whichkey"
require "user.autocommands"
