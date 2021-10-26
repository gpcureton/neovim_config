" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Make sure you use single quotes

    "------------
    " Tools
    "------------

    " A fancy start screen for (N)vim
    Plug 'https://github.com/mhinz/vim-startify'

    " Extended session management for Vim (:mksession on steroids)
    Plug 'https://github.com/xolox/vim-session.git'
    Plug 'https://github.com/xolox/vim-misc.git'

    " Quickstart configurations for the Nvim LSP client 
    Plug 'https://github.com/neovim/nvim-lspconfig.git'
    Plug 'https://github.com/hrsh7th/nvim-compe.git'
    "Plug 'https://github.com/hrsh7th/nvim-cmp.git'

    Plug 'https://github.com/glepnir/lspsaga.nvim.git'
    Plug 'https://github.com/onsails/lspkind-nvim.git'
    Plug 'https://github.com/simrat39/symbols-outline.nvim.git'

    " Nvim Treesitter configurations and abstraction layer
    Plug 'https://github.com/nvim-treesitter/nvim-treesitter.git', {'do': ':TSUpdate'}
    Plug 'https://github.com/nvim-treesitter/playground.git'

    " A (Neo)vim plugin for formatting code. 
    Plug 'https://github.com/sbdchd/neoformat.git'

    " A modern Vim and neovim filetype plugin for LaTeX files.
    Plug 'https://github.com/lervag/vimtex.git'

    " A command-line fuzzy finder 
    Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'https://github.com/junegunn/fzf.vim'

    " Checkout branches and tags with fzf
    Plug 'https://github.com/stsewd/fzf-checkout.vim.git'

    "  Enhanced in-file search for Vim
    Plug 'https://github.com/wincent/loupe.git'

    " Changes Vim working directory to project root. 
    Plug 'https://github.com/airblade/vim-rooter.git'

    " The undo history visualizer for VIM 
    Plug 'https://github.com/mbbill/undotree.git'

    " Maximizes and restores the current window in Vim. 
    Plug 'https://github.com/szw/vim-maximizer.git'

    " The BClose Vim plugin for deleting a buffer without closing the window
    Plug 'https://github.com/rbgrouleff/bclose.vim.git'

    " A multi-language debugging system for Vim
    Plug 'https://github.com/puremourning/vimspector.git'

    " A high performance filetype mode for Neovim which leverages
    " conceal and highlights your buffer with the correct color codes. 
    Plug 'https://github.com/norcalli/nvim-terminal.lua.git'

    " Improved terminal navigation by The Primeagen
    Plug 'https://github.com/ThePrimeagen/harpoon.git'

    " Working with git-worktree
    Plug 'https://github.com/ThePrimeagen/git-worktree.nvim.git'

    " General purpose asynchronous tree viewer written in Pure Vim script 
    Plug 'https://github.com/lambdalisue/fern.vim.git'
    Plug 'https://github.com/lambdalisue/fern-git-status.vim.git'
    Plug 'https://github.com/lambdalisue/fern-renderer-nerdfont.vim.git'
    Plug 'https://github.com/lambdalisue/nerdfont.vim.git'
    Plug 'https://github.com/lambdalisue/glyph-palette.vim.git'
    "Plug 'https://github.com/lambdalisue/fern-renderer-devicons.vim.git'

    " A generic and modular lua sidebar for Neovim
    Plug 'https://github.com/GustavoKatel/sidebar.nvim.git'

    " Add icons to your (N)vim
    Plug 'https://github.com/ryanoasis/vim-devicons'
    Plug 'https://github.com/kyazdani42/nvim-web-devicons.git'

    " Exuberant Ctags
    Plug 'https://github.com/vim-scripts/taglist.vim.git'

    " Nerd Commenter
    Plug 'https://github.com/preservim/nerdcommenter.git'
 
    " commentary.vim: comment stuff out 
    "Plug 'https://github.com/tpope/vim-commentary.git'

    " surround.vim: quoting/parenthesizing made simple 
    Plug 'https://github.com/tpope/vim-surround.git'

    " A Git wrapper so awesome, it should be illegal
    Plug 'https://github.com/tpope/vim-fugitive.git'

    " Asynchronous build and test dispatcher 
    Plug 'https://github.com/tpope/vim-dispatch.git'

    " enable repeating supported plugin maps with '.' 
    Plug 'https://github.com/tpope/vim-repeat.git'

    "  Git signs written in pure lua 
    Plug 'https://github.com/lewis6991/gitsigns.nvim.git'

    " A git commit browser in Vim
    Plug 'https://github.com/junegunn/gv.vim'

    " A Vim plugin for visually displaying indent levels in code
    Plug 'https://github.com/Yggdroot/indentLine.git'

    " Personal Wiki for Vim
    "Plug 'https://github.com/vimwiki/vimwiki.git'

    " The interactive scratchpad for hackers. 
    Plug 'https://github.com/metakirby5/codi.vim'

    " Interactive real time neovim scratchpad for embedded lua engine - type and watch!
    Plug 'https://github.com/rafcamlet/nvim-luapad.git'

    " Airline
    "Plug 'https://github.com/vim-airline/vim-airline.git'
    "Plug 'https://github.com/vim-airline/vim-airline-themes.git'

    " neovim statusline plugin written in lua
    "Plug 'https://github.com/glepnir/galaxyline.nvim.git', {'branch': 'main'}

    " A blazing fast and easy to configure neovim statusline written in pure lua.
    Plug 'https://github.com/hoob3rt/lualine.nvim.git'

    " A Vim alignment plugin
    Plug 'https://github.com/junegunn/vim-easy-align'

    "Plug 'SirVer/ultisnips'
    "Plug 'https://github.com/honza/vim-snippets'
    "Plug 'https://github.com/norcalli/snippets.nvim.git'
    "Plug 'https://github.com/L3MON4D3/LuaSnip.git'
    "Plug 'https://github.com/saadparwaiz1/cmp_luasnip.git'

    " vim-be-good is a nvim plugin designed to make you better at Vim Movements. 
    Plug 'https://github.com/ThePrimeagen/vim-be-good.git'

    " A vim plugin to access cheat.sh sheets 
    "Plug 'https://gitlab.com/dbeniamine/cheat.sh-vim.git'

    " Use nvim/vim's builtin terminal in the floating/popup window 
    Plug 'https://github.com/voldikss/vim-floaterm.git'
    Plug 'https://github.com/voldikss/fzf-floaterm.git'

    " A neovim lua plugin to help easily manage multiple terminal windows
    Plug 'https://github.com/akinsho/nvim-toggleterm.lua.git'

    " A pretty diagnostics, references, telescope results, quickfix and
    " location list to help you solve all the trouble your code is causing.
    Plug 'https://github.com/folke/trouble.nvim.git'

    " Highlight, list and search todo comments in your projects
    Plug 'https://github.com/folke/todo-comments.nvim.git'

    "Find, Filter, Preview, Pick. All lua, all the time.
    Plug 'https://github.com/nvim-lua/popup.nvim'
    Plug 'https://github.com/nvim-lua/plenary.nvim'
    Plug 'https://github.com/nvim-telescope/telescope.nvim.git'
    "Plug 'https://github.com/nvim-telescope/telescope-menu.nvim.git'
    Plug 'https://github.com/nvim-telescope/telescope-symbols.nvim.git'
    Plug 'https://github.com/nvim-telescope/telescope-bibtex.nvim.git'
    Plug 'https://github.com/nvim-telescope/telescope-fzy-native.nvim.git', {'do': 'make'}
    Plug 'https://github.com/nvim-telescope/telescope-fzf-writer.nvim.git'
    Plug 'https://github.com/nvim-telescope/telescope-snippets.nvim.git'
    Plug 'https://github.com/nvim-telescope/telescope-media-files.nvim.git'
    Plug 'https://github.com/nvim-telescope/telescope-vimspector.nvim.git'
    "
    "Plug 'https://github.com/nvim-telescope/telescope-github.nvim.git'
    "Plug 'https://github.com/nvim-telescope/telescope-project.nvim.git'
    "Plug 'https://github.com/nvim-telescope/telescope-frecency.nvim.git'
    
    "------------
    " Syntax
    "------------
 
    "Plug 'https://github.com/tpope/vim-markdown'

    "------------
    " Color Schemes
    "------------

    Plug 'https://github.com/gosukiwi/vim-atom-dark.git'
    Plug 'https://github.com/cocopon/iceberg.vim.git'
    Plug 'https://github.com/morhetz/gruvbox.git'
    Plug 'https://github.com/arcticicestudio/nord-vim.git'
    Plug 'https://github.com/altercation/vim-colors-solarized.git'
    Plug 'https://github.com/dracula/vim.git'
    Plug 'https://github.com/ayu-theme/ayu-vim.git'
    Plug 'https://github.com/rakr/vim-one.git'
    Plug 'https://github.com/drewtempelmeyer/palenight.vim.git'
    Plug 'https://github.com/cooper-anderson/glowbeam.vim.git'

    "-----------------
    " Plugin Graveyard
    "-----------------

    " Vim Space Controller
    "Plug 'https://github.com/vim-ctrlspace/vim-ctrlspace.git'

    " Vim motions on speed! 
    "Plug 'https://github.com/easymotion/vim-easymotion.git'

    " A file explorer tree for neovim written in lua 
    "Plug 'https://github.com/kyazdani42/nvim-tree.lua.git'

    " The dark powered file explorer implementation
    "Plug 'https://github.com/Shougo/defx.nvim.git', { 'do': ':UpdateRemotePlugins' }

    " An ack.vim alternative mimics Ctrl-Shift-F on Sublime Text 2 
    "Plug 'https://github.com/dyng/ctrlsf.vim.git'

    " Show a diff using Vim its sign column.
    "Plug 'https://github.com/mhinz/vim-signify.git'

    " Stable version of coc
    "Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}

    " Few utilities for pretty tabs 
    "Plug 'https://github.com/gcmt/taboo.vim.git'

    " Flake8 plugin for Vim (now provided by CoC).
    "Plug 'nvie/vim-flake8'

    " A tree explorer plugin for vim. 
    "Plug 'https://github.com/preservim/nerdtree.git', { 'on':  'NERDTreeToggle' }

    " A plugin of NERDTree showing git status
    "Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'

    " Buffer Explorer
    "Plug 'https://github.com/jlanzarotta/bufexplorer.git'

    " makes exiting insert mode easy and distraction free! 
    "Plug 'https://github.com/zhou13/vim-easyescape.git'

    " A pluging for the ranger file manager
    "Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " A Vim plugin which shows git diff markers in the sign column and
    " stages/previews/undoes hunks and partial hunks.
    "Plug 'https://github.com/airblade/vim-gitgutter.git'

    " Any valid git URL is allowed
    "Plug 'https://github.com/junegunn/vim-github-dashboard.git'

    " Embed Neovim in your browser. 
    "Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

    " YouCompleteMe: a code-completion engine for Vim
    "Plug 'https://github.com/ycm-core/YouCompleteMe.git'

    " Full path fuzzy file, buffer, mru, tag, ... finder for Vim
    "Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

    " Modern Task System for Project Building, Testing and Deploying
    "Plug 'https://github.com/skywind3000/asynctasks.vim.git'
    " Run Async Shell Commands in and output to the Quickfix Window
    "Plug 'https://github.com/skywind3000/asyncrun.vim.git'

call plug#end()
