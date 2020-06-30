"-------------------------------- Plugins (VimPlug) --------------------------
source $HOME/.config/nvim/vim-plug/plugins.vim

"------------------------------ General Settings -----------------------------
source $HOME/.config/nvim/general/settings.vim

"------------------------------ Key Mappings ---------------------------------
source $HOME/.config/nvim/keys/mappings.vim
"source $HOME/.config/nvim/keys/vim-which-key.vim

"---------------------------- Plugin Options ---------------------------------
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/vim-session.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
"source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/ctrlp.vim
source $HOME/.config/nvim/plug-config/youcompleteme.vim
source $HOME/.config/nvim/plug-config/undotree.vim
source $HOME/.config/nvim/plug-config/taglist.vim
source $HOME/.config/nvim/plug-config/taboo.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/nerdtree-git-plugin.vim
source $HOME/.config/nvim/plug-config/quick-scope.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/indentLine.vim
source $HOME/.config/nvim/plug-config/vim-fugitive.vim
"source $HOME/.config/nvim/plug-config/gitgutter.vim
source $HOME/.config/nvim/plug-config/vim-signify.vim
source $HOME/.config/nvim/plug-config/codi.vim
source $HOME/.config/nvim/plug-config/flake8.vim
source $HOME/.config/nvim/plug-config/airline.vim

"-------------------------- Colours and Highlighting -------------------------
source $HOME/.config/nvim/colors/colors.vim
colorscheme Ubuntu
"colorscheme atom-dark
"colorscheme iceberg
"source $HOME/.config/nvim/themes/onedark.vim

"------------------------------ Syntax Mappings ------------------------------
" Stop vim-json from hiding quotes in JSON files
let g:vim_json_syntax_conceal = 0
