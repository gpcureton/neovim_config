local status_ok, _ = pcall(require, "vim-fugitive")
if not status_ok then
  return
end

local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.keymap.set

-- Sweet Sweet FuGITive
keymap("n", "<leader>gf", ":diffget //2<CR>", opts)
keymap("n", "<leader>gh", ":diffget //3<CR>", opts)
keymap("n", "<leader>gg", ":G<CR>", opts)

-- These mappings use fzf-checkout
keymap("n", "<leader>gm", ":GBranches merge", opts)
keymap("n", "<leader>gr", ":GBranches rebase", opts)
keymap("n", "<leader>gp", ":Git pull", opts)
keymap("n", "<leader>gc", ":Git commit", opts)
keymap("n", "<leader>gP", ":Git push", opts)
keymap("n", "<leader>ga", ":Git fetch --all", opts)
-- nnoremap <leader>grum :Git rebase upstream/master<CR>
-- nnoremap <leader>grom :Git rebase origin/master<CR>
