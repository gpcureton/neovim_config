"-----------------------------------------------------------------------------
"                           Colours and Highlighting
"-----------------------------------------------------------------------------

"" If using a dark background within the editing area and syntax highlighting
"" turn on this option as well
"set background=dark
if has('termguicolors')
    set termguicolors
end
set t_Co=256

"if exists('+termguicolors')
    "let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    "let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"endif

"colorscheme one
"colorscheme Ubuntu
"colorscheme atom-dark
"colorscheme iceberg
"colorscheme nord
"colorscheme dracula
"colorscheme palenight

"colorscheme gruvbox
let g:gruvbox_contrast_dark = 'soft'
"let g:gruvbox_contrast_dark = 'medium'
"let g:gruvbox_contrast_dark = 'hard'

"colorscheme ayu 
"let ayucolor="light"
"let ayucolor="mirage"
let ayucolor="dark"

" Example config in VimScript
let g:tokyonight_style = "night"
"let g:tokyonight_style = "storm"
let g:tokyonight_italic_functions = 1
let g:tokyonight_lualine_bold = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

" Load the colorscheme
colorscheme tokyonight

"New colours for vimdiff
highlight DiffAdd term=reverse cterm=bold ctermbg=green ctermfg=white
highlight DiffChange term=reverse cterm=bold ctermbg=cyan ctermfg=black
highlight DiffText term=reverse cterm=bold ctermbg=gray ctermfg=black
highlight DiffDelete term=reverse cterm=bold ctermbg=red ctermfg=black

" Allows transparent Nvim (not too good for editing)
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE ctermfg=NONE guifg=NONE
