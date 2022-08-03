local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<C-n>", ":bnext<CR>", opts)
keymap("n", "<C-p>", ":bprevious<CR>", opts)

Is_quickfix_list_open = false -- Global (quickfix list)

ToggleQFList = function()
    if not Is_quickfix_list_open then
        vim.cmd [[copen]]
        Is_quickfix_list_open = true
    else
        vim.cmd [[cclose]]
        Is_quickfix_list_open = false
    end
end

Is_location_list_open = false -- Local (location list)

ToggleLocList = function()
    if Is_location_list_open then
        Is_location_list_open = true
        vim.cmd [[lopen]]
    else
        Is_location_list_open = false
        vim.cmd [[lclose]]
    end
end

-- Quickfix and Location lists
keymap("n", "<C-q>", ":lua ToggleQFList()<CR>")
keymap("n", "<leader>qc", ":cexpr[]<CR>")
keymap("n", "<M-l>", ":lua ToggleLocList()<CR>")
keymap("n", "<leader>lc", ":lexpr[]<CR>")

-- Navigating items in the quickfix list
keymap("n", "<M-k>", ":cprev<CR>", opts)
keymap("n", "<M-j>", ":cnext<CR>", opts)

-- Navigating items in the location list
keymap("n", "<leader>k", ":lprev<CR>", opts)
keymap("n", "<leader>j", ":lnext<CR>", opts)


-- Move text up and down
-- keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
-- keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
-- keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)
-- keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
-- keymap("x", "J", ":move '>+1<CR>gv=gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv=gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Make Y behave like the rest of the capital letters...
keymap("n", "Y", 'y$', opts)

-- Keeping things centered...
keymap("n", "n", 'nzzzv', opts)
keymap("n", "N", 'Nzzzv', opts)
keymap("n", "J", 'mzJ`z', opts)

-- Perform Undo operations at these breakpoints...
keymap("i", ",", ",<C-g>u", opts)
keymap("i", ".", ".<C-g>u", opts)
keymap("i", "!", "!<C-g>u", opts)
keymap("i", "?", "?<C-g>u", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

