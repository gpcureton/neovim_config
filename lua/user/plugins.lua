local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
    use "lewis6991/impatient.nvim"

    -- >>> Session Management <<<--

    use "goolord/alpha-nvim"
    --use 'https://github.com/mhinz/vim-startify'  -- A fancy start screen for (N)vim
    use "ahmedkhalf/project.nvim"

    -- >>> Commenting stuff <<<--

    -- Easily comment stuff
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
    }
    --use 'https://github.com/preservim/nerdcommenter.git' -- Nerd Commenter
    --use 'https://github.com/tpope/vim-commentary.git' -- commentary.vim: comment stuff out

    -->> Icons and other eye candy <<--

    use "kyazdani42/nvim-web-devicons"
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }
    use 'ryanoasis/vim-devicons' -- Add icons to your (N)vim
    --use 'https://github.com/GustavoKatel/sidebar.nvim.git' -- A generic and modular lua sidebar for Neovim
    use 'https://github.com/simrat39/symbols-outline.nvim.git'
    --use 'https://github.com/lambdalisue/nerdfont.vim.git'
    --use 'https://github.com/lambdalisue/glyph-palette.vim.git'

    -->> Colorschemes <<--

    use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
    use "lunarvim/darkplus.nvim"
    --use 'https://github.com/gosukiwi/vim-atom-dark.git'
    --use 'https://github.com/cocopon/iceberg.vim.git'
    --use 'https://github.com/morhetz/gruvbox.git'
    --use 'https://github.com/arcticicestudio/nord-vim.git'
    --use 'https://github.com/altercation/vim-colors-solarized.git'
    --use 'https://github.com/dracula/vim.git'
    use 'ayu-theme/ayu-vim'
    --use 'https://github.com/rakr/vim-one.git'
    --use 'https://github.com/drewtempelmeyer/palenight.vim.git'
    --use 'https://github.com/cooper-anderson/glowbeam.vim.git'
    use 'vim-conf-live/vimconflive2021-colorscheme'
    use {'folke/tokyonight.nvim', branch = "main"}

    -->> Buffer Management <<--

    use "akinsho/bufferline.nvim"
    use "moll/vim-bbye" -- Delete buffers and close files in Vim without closing your windows or messing up your layout.
                        -- Like Bclose.vim, but rewritten and well maintained.
    --use 'rbgrouleff/bclose.vim' -- The BClose Vim plugin for deleting a buffer without closing the window

    -->> General Utilities <<--

    use "nvim-lualine/lualine.nvim" -- A blazing fast and easy to configure neovim statusline written in pure lua.
    use "lukas-reineke/indent-blankline.nvim"
    --use 'Yggdroot/indentLine' -- A Vim plugin for visually displaying indent levels in code
    --use 'junegunn/vim-easy-align' -- A Vim alignment plugin
    use 'rcarriga/nvim-notify' -- A fancy, configurable, notification manager for NeoVim
    use 'vim-scripts/taglist.vim' -- Exuberant Ctags
    --use 'tpope/vim-repeat' -- enable repeating supported plugin maps with '.'
    use 'mbbill/undotree' -- The undo history visualizer for VIM
    use 'szw/vim-maximizer' -- Maximizes and restores the current window in Vim.
    use 'wincent/loupe' --  Enhanced in-file search for Vim
    use 'dbeniamine/cheat.sh-vim' -- A vim plugin to access cheat.sh sheets
    use "folke/which-key.nvim" -- WhichKey is a lua plugin that displays a popup with possible keybindings of the command you started typing
    use 'folke/todo-comments.nvim' -- Highlight, list and search todo comments in your projects
    use 'folke/trouble.nvim' -- A pretty diagnostics, references, telescope results, quickfix and location list
                             -- to help you solve all the trouble your code is causing.
    use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
    --use 'tpope/vim-surround' -- surround.vim: quoting/parenthesizing made simple
    use {
        "AckslD/nvim-neoclip.lua",
        requires = {
            'nvim-telescope/telescope.nvim',
        },
        config = function()
            require('neoclip').setup()
        end,
    }

    -->> Terminal Management <<--

    use "akinsho/toggleterm.nvim"
    -- use nvim/vim's builtin terminal in the floating/popup window
    --use 'https://github.com/voldikss/vim-floaterm.git'
    --use 'https://github.com/voldikss/fzf-floaterm.git'
    --use 'https://github.com/akinsho/nvim-toggleterm.lua.git' -- A neovim lua plugin to help easily manage multiple terminal windows
    --use 'https://github.com/norcalli/nvim-terminal.lua.git' -- A high performance filetype mode for Neovim which leverages
                                                              -- conceal and highlights your buffer with the correct color codes.
    use 'https://github.com/ThePrimeagen/harpoon.git' -- Improved terminal navigation by The Primeagen

    -- >> Git, and other development plugins <<--

    use 'tpope/vim-fugitive' -- A Git wrapper so awesome, it should be illegal
    use 'ThePrimeagen/git-worktree.nvim' -- Working with git-worktree
    use "lewis6991/gitsigns.nvim" --  Git signs written in pure lua
    use 'tpope/vim-dispatch' -- Asynchronous build and test dispatcher
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' } -- Single tabpage interface for easily cycling through
                                                                         -- diffs for all modified files for any git rev.
    use "will133/vim-dirdiff"  -- Vim plugin to diff two directories
    -- use 'sbdchd/neoformat' -- A (Neo)vim plugin for formatting code.
    --use 'puremourning/vimspector' -- A multi-language debugging system for Vim
    --use 'junegunn/gv.vim' -- A git commit browser in Vim
    --use 'airblade/vim-rooter' -- Changes Vim working directory to project root.
    --use 'metakirby5/codi.vim' -- The interactive scratchpad for hackers.
    --use 'rafcamlet/nvim-luapad' -- Interactive real time neovim scratchpad for embedded lua engine - type and watch!



    -- >> LaTeX <<--

    use 'lervag/vimtex' -- A modern Vim and neovim filetype plugin for LaTeX files.

    -- >> Completion, Language Servers and Snippets <<--

    -- cmp plugins
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "kdheepak/cmp-latex-symbols" -- latex symbol support
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"

    -- snippets
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- LSP
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/nvim-lsp-installer" -- simple to use language server installer
    use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
    use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
    use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
    --use 'https://github.com/onsails/lspkind-nvim.git'

    -->> Telescope <<--

    use "nvim-telescope/telescope.nvim"
    use 'nvim-telescope/telescope-symbols.nvim'
    use 'nvim-telescope/telescope-bibtex.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    --use 'nvim-telescope/telescope-fzf-writer.nvim'
    --use 'nvim-telescope/telescope-snippets.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'
    --use 'nvim-telescope/telescope-vimspector.nvim'
    use 'nvim-telescope/telescope-github.nvim'
    --use 'nvim-telescope/telescope-project.nvim'
    --use 'nvim-telescope/telescope-frecency.nvim'
    use {
      'pwntester/octo.nvim',
      requires = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
        'kyazdani42/nvim-web-devicons',
      },
      config = function ()
        require"octo".setup()
      end
    }


    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    use 'nvim-treesitter/playground' -- Nvim Treesitter configurations and abstraction layer
    use "JoosepAlviste/nvim-ts-context-commentstring"

    -- Personal Wiki for Vim
    use 'https://github.com/vimwiki/vimwiki.git'
    use 'https://github.com/tpope/vim-markdown'

    ---------------------- Old / Unused Plugins ------------------------------


    -- A command-line fuzzy finder
    --use 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } }
    --use 'https://github.com/junegunn/fzf.vim'

    -- Checkout branches and tags with fzf
    --use 'https://github.com/stsewd/fzf-checkout.vim.git'

    -- vim-be-good is a nvim plugin designed to make you better at Vim Movements.
    --use 'https://github.com/ThePrimeagen/vim-be-good.git'


    ---------------------- Old / Unused Plugins ------------------------------

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
