require('lualine').setup{
  options = {
    --theme = 'gruvbox',
    theme = 'ayu_dark',
    --theme = 'ayu_mirage',
    --theme = 'powerline',
    --theme = 'onedark',
    section_separators = {'', ''},
    component_separators = {'', ''},
    --section_separators = {'', ''},
    --component_separators = {'', ''},
    icons_enabled = true,
  },
  sections = {
    lualine_a = {
        {
            'mode',
            upper = true
        }
    },
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
    lualine_c = {
        {
            'filename',
            file_status = true
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
    lualine_x = { 'location' },
    lualine_y = {  },
    lualine_z = {   }
  },
  extensions = { 'fzf', 'fugitive' }
}
