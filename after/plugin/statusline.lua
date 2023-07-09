require('lualine').setup {
        options = {
                icons_enabled = true,
                theme = 'onedark',
                component_searators = '|',
                section_separators = ' ',
        },
}
require('indent_blankline').setup {
        char = '┊',
        show_trailing_blankline_indent = false,
}
