"-----------------------------------------------------------------------------
"                           Colours and Highlighting
"-----------------------------------------------------------------------------

"" If using a dark background within the editing area and syntax highlighting
"" turn on this option as well
"set background=dark
set termguicolors
set t_Co=256
colorscheme Ubuntu
"colorscheme atom-dark
"colorscheme iceberg
"source $HOME/.config/nvim/themes/onedark.vim

" Allows transparent Nvim (not too good for editing)
"highlight Normal ctermbg=NONE guibg=NONE
"highlight NonText ctermbg=NONE guibg=NONE ctermfg=NONE guifg=NONE

"New colours for vimdiff
highlight DiffAdd term=reverse cterm=bold ctermbg=green ctermfg=white
highlight DiffChange term=reverse cterm=bold ctermbg=cyan ctermfg=black
highlight DiffText term=reverse cterm=bold ctermbg=gray ctermfg=black
highlight DiffDelete term=reverse cterm=bold ctermbg=red ctermfg=black
