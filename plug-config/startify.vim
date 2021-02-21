"let g:startify_session_dir = '~/.vim/sessions'
"let g:startify_session_dir = '~/.local/share/nvim/sessions'
let g:startify_session_dir = '~/.config/nvim/sessions'
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]
let g:startify_bookmarks = [
            \ '~/.config/nvim/init.vim',
            \ '~/.config/nvim/coc-settings.json',
            \ '~/.bashrc',
            \ '~/.bashrc_local',
            \ '~/.bash_profile',
            \ '~/.config/kitty/kitty.conf',
            \ '~/.config/picom.conf',
            \ '~/SSEC',
            \ ]
