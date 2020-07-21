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

    " makes exiting insert mode easy and distraction free! 
    "Plug 'https://github.com/zhou13/vim-easyescape.git'

    " Extended session management for Vim (:mksession on steroids)
    Plug 'https://github.com/xolox/vim-session.git'
    Plug 'https://github.com/xolox/vim-misc.git'

    " Stable version of coc
    "Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}

    " YouCompleteMe: a code-completion engine for Vim
    "Plug 'https://github.com/ycm-core/YouCompleteMe.git'

    " Full path fuzzy file, buffer, mru, tag, ... finder for Vim
    Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

    " An ack.vim alternative mimics Ctrl-Shift-F on Sublime Text 2 
    Plug 'https://github.com/dyng/ctrlsf.vim.git'

    " A command-line fuzzy finder 
    Plug 'https://github.com/junegunn/fzf'
    "Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } }

    " Changes Vim working directory to project root. 
    Plug 'https://github.com/airblade/vim-rooter.git'

    " The undo history visualizer for VIM 
    Plug 'https://github.com/mbbill/undotree.git'

    " Exuberant Ctags
    Plug 'https://github.com/vim-scripts/taglist.vim.git'

    " Nerd Commenter
    Plug 'https://github.com/preservim/nerdcommenter.git'

    " A tree explorer plugin for vim. 
    Plug 'https://github.com/preservim/nerdtree.git', { 'on':  'NERDTreeToggle' }

    " A plugin of NERDTree showing git status
    Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'

    " Few utilities for pretty tabs 
    Plug 'https://github.com/gcmt/taboo.vim.git'

    " Buffer Explorer
    Plug 'https://github.com/jlanzarotta/bufexplorer.git'

    " A Git wrapper so awesome, it should be illegal
    Plug 'https://github.com/tpope/vim-fugitive.git'

    " A Vim plugin which shows git diff markers in the sign column and
    " stages/previews/undoes hunks and partial hunks.
    "Plug 'https://github.com/airblade/vim-gitgutter.git'

    " Show a diff using Vim its sign column.
    Plug 'https://github.com/mhinz/vim-signify.git'

    " A git commit browser in Vim
    Plug 'https://github.com/junegunn/gv.vim'

    " A pluging for the ranger file manager
    "Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " A Vim plugin for visually displaying indent levels in code
    Plug 'https://github.com/Yggdroot/indentLine.git'

    " Neovim thin wrapper for GDB, LLDB, PDB and BashDB 
    Plug 'https://github.com/sakhnik/nvim-gdb.git'

    " The interactive scratchpad for hackers. 
    "Plug 'https://github.com/metakirby5/codi.vim' " Original repo, preferred
    Plug 'https://github.com/ChristianChiarulli/codi.vim'

    " Flake8 plugin for Vim
    Plug 'nvie/vim-flake8'

    " Airline
    Plug 'https://github.com/vim-airline/vim-airline.git'
    Plug 'https://github.com/vim-airline/vim-airline-themes.git'

    " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
    Plug 'https://github.com/junegunn/vim-easy-align'

    " Any valid git URL is allowed
    "Plug 'https://github.com/junegunn/vim-github-dashboard.git'

    "Plug 'SirVer/ultisnips'
    Plug 'https://github.com/honza/vim-snippets'

    Plug 'https://github.com/roxma/nvim-yarp.git'
    Plug 'https://github.com/ncm2/ncm2.git'
    " enable ncm2 for all buffers
    "autocmd BufEnter * call ncm2#enable_for_buffer()

    " NOTE: you need to install completion sources to get completions.
    "Check
    " our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
    Plug 'https://github.com/ncm2/ncm2-bufword'
    Plug 'https://github.com/ncm2/ncm2-path'

    " Add icons to your (N)vim
    Plug 'ryanoasis/vim-devicons'

    " Embed Neovim in your browser. 
    "Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

    "------------
    " Syntax
    "------------
 
    Plug 'https://github.com/tpope/vim-markdown'
    "Plug 'https://github.com/plasticboy/vim-markdown.git'
    "Plug 'https://github.com/gabrielelana/vim-markdown.git'

    "------------
    " Color Schemes
    "------------

    Plug 'https://github.com/gosukiwi/vim-atom-dark.git'
    Plug 'https://github.com/cocopon/iceberg.vim.git'


call plug#end()
