require('lualine').setup{
  options = {
    --theme = 'gruvbox',
    --theme = 'ayu_dark',
    --theme = 'ayu_mirage',
    --theme = 'powerline',
    --theme = 'powerline_dark',
    --theme = 'onedark',
    --theme = 'OceanicNext',
    theme = 'tokyonight',
    component_separators = {left = '', right = ''},
    section_separators = {left = '', right = ''},
    --section_separators = {'', ''},
    --component_separators = {'', ''},
    icons_enabled = true,
  },
  --tabline = {
    --lualine_a = { },
    --lualine_b = { {'branch', icon = ''} },
    --lualine_c = { 'filename' },
    --lualine_x = { },
    --lualine_y = { },
    --lualine_z = { },
  --},
  sections = {
    lualine_a = { { 'mode', upper = true } },
    lualine_b = {
        {
            'branch',
            icon = '',
            --icon = '',
            color = { fg = '#ff6600' }
            --color = { fg = '#ffff00' }
            --color = { fg = '#00aa22' }
        },
        { 
            'diff',
            colored = true,
            symbols = { added = ' ', modified = ' ', removed = ' '},
            color_added = '#00ff00',
            color_modified = '#36a3d9',
            color_removed = '#ff0000',
        },
    },
    lualine_c = {
        {
            'filename',
            color = {fg = '#ffffff'},
            file_status = true,
        },
        {
          'diagnostics',
          sources = {'nvim_lsp'},
          sections = {
              'error',
              'warn',
              'info',
          },
          symbols = {
              warn = ' ',
              error = ' ',
              info = ' ',
          },
          color_error = '#ff0000',
          color_warn = '#ffaa00',
          color_info = '#ffffff',
        },
    },
    lualine_x = {
        'encoding',
        'fileformat',
        'filetype'
    },
    lualine_y = {
        'progress'
    },
    lualine_z = {
        'location'
    },
  },
  inactive_sections = {
    lualine_a = {  },
    lualine_b = {  },
    lualine_c = { 'filename' },
    --lualine_c = { { 'filename', color = {fg = '#444444'} } },
    lualine_x = { 'location' },
    --lualine_x = { {'location', color = {fg = '#444444'} } },
    lualine_y = {  },
    lualine_z = {   }
  },
  extensions = { 'fern', 'fzf', 'fugitive', 'quickfix' }
}
