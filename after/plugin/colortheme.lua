require('rose-pine').setup({
	disable_background = true,
	-- groups = {
	--
	-- }

})

vim.o.termguicolors = true
vim.g.rose_pine_variant = 'main'
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#f2f2f2' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.cmd [[colorscheme rose-pine]]
