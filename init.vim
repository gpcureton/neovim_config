"-------------------------------- Plugins (VimPlug) --------------------------
source $HOME/.config/nvim/vim-plug/plugins.vim

"------------------------------ General Settings -----------------------------
source $HOME/.config/nvim/general/settings.vim

"------------------------------ Key Mappings ---------------------------------
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/navigation.vim

"-------------------------- Colours and Highlighting -------------------------
source $HOME/.config/nvim/colors/colors.vim
"
"---------------------------- Plugin Options ---------------------------------
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/vim-session.vim
source $HOME/.config/nvim/plug-config/nvim-lsp.vim
source $HOME/.config/nvim/plug-config/nvim-compe.vim
source $HOME/.config/nvim/plug-config/tree-sitter.vim
source $HOME/.config/nvim/plug-config/neoformat.vim
source $HOME/.config/nvim/plug-config/vim-snippets.vim
source $HOME/.config/nvim/plug-config/vimtex.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/fzf-checkout.vim
source $HOME/.config/nvim/plug-config/fern.vim
source $HOME/.config/nvim/plug-config/harpoon.vim
source $HOME/.config/nvim/plug-config/telescope.vim
source $HOME/.config/nvim/plug-config/vim-rooter.vim
source $HOME/.config/nvim/plug-config/undotree.vim
source $HOME/.config/nvim/plug-config/vim-maximizer.vim
source $HOME/.config/nvim/plug-config/vimspector.vim
source $HOME/.config/nvim/plug-config/taglist.vim
"source $HOME/.config/nvim/plug-config/vim-commentary.vim
source $HOME/.config/nvim/plug-config/indentLine.vim
source $HOME/.config/nvim/plug-config/vim-fugitive.vim
luafile $HOME/.config/nvim/lua/plugins/gitsigns.lua
source $HOME/.config/nvim/plug-config/codi.vim
source $HOME/.config/nvim/plug-config/airline.vim
"source $HOME/.config/nvim/plug-config/vimwiki.vim


" Don't work (yet)
"luafile $HOME/.config/nvim/lua/plugins/evilline.lua
"luafile $HOME/.config/nvim/lua/plugins/galaxyline_mnabila.lua
"luafile $HOME/.config/nvim/lua/plugins/galaxyline-config.lua
"luafile $HOME/.config/nvim/lua/plugins/galaxyline_kraftwerk28.lua
"luafile $HOME/.config/nvim/lua/plugins/galaxyline_richin13.lua

"source $HOME/.config/nvim/plug-config/easymotion.vim
"source $HOME/.config/nvim/plug-config/ctrlsf.vim
"source $HOME/.config/nvim/plug-config/ctrlspace.vim
"source $HOME/.config/nvim/plug-config/nvim-tree.vim
"source $HOME/.config/nvim/plug-config/vim-signify.vim
"source $HOME/.config/nvim/plug-config/youcompleteme.vim
"source $HOME/.config/nvim/plug-config/ctrlp.vim
"source $HOME/.config/nvim/plug-config/taboo.vim
"source $HOME/.config/nvim/plug-config/nerdtree.vim
"source $HOME/.config/nvim/plug-config/nerdtree-git-plugin.vim
"source $HOME/.config/nvim/plug-config/gitgutter.vim
"source $HOME/.config/nvim/plug-config/flake8.vim
"source $HOME/.config/nvim/plug-config/coc/coc.vim
"source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim


"------------------------------ Syntax Mappings ------------------------------
" Stop vim-json from hiding quotes in JSON files
let g:vim_json_syntax_conceal = 0
