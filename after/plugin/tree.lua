vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require('nvim-tree').setup()

require('nvim-tree').setup({
  sort_by = 'case_sensitive',
  disable_netrw = true,
  reload_on_bufenter = true,
  view = {
    width = 35,
    relativenumber = true,
    mappings = {
      list = {
        { key = 'u', action = 'dir_up' },
        { key = '<C-t><C-t>', action = '<cmd>:ToggleTerm=direction="vertical" size=70<CR>'},
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
local function open_nvim_tree()

  -- open the tree
  require('nvim-tree.api').tree.open()
end
vim.api.nvim_create_autocmd({ 'VimEnter' }, { callback = open_nvim_tree })
