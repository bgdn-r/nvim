--vim.o.hlsearch = false
--vim.opt.relativenumber = true
--vim.wo.number = true
--vim.o.mouse = "a"
--vim.wo.breakindent = true
--vim.o.undofile = true
--vim.o.ignorecase = true
--vim.o.smartcase = true
--vim.o.updatetime = 50
--vim.wo.signcolumn = "yes"
--vim.opt.guicursor = ""
--vim.opt.wrap = false
--vim.opt.scrolloff = 8
--vim.opt.tabstop = 4
--vim.opt.softtabstop = 4
--vim.opt.expandtab = true
--vim.o.completeopt = "menuone,noselect"
vim.api.nvim_set_option("hlsearch", false)
vim.api.nvim_set_option("relativenumber", true)
vim.api.nvim_set_option("number", true)
vim.api.nvim_set_option("mouse", "a")
vim.api.nvim_set_option("breakindent", true)
vim.api.nvim_set_option("undofile", true)
vim.api.nvim_set_option("ignorecase", true)
vim.api.nvim_set_option("smartcase", true)
vim.api.nvim_set_option("updatetime", 50)
vim.api.nvim_set_option("signcolumn", "yes")
vim.api.nvim_set_option("guicursor", "")
vim.api.nvim_set_option("wrap", false)
vim.api.nvim_set_option("scrolloff", 8)
vim.api.nvim_set_option("tabstop", 4)
vim.api.nvim_set_option("softtabstop", 4)
vim.api.nvim_set_option("expandtab", true)
vim.api.nvim_set_option("completeopt", "menuone,noselect")
vim.api.nvim_exec("set guicursor=a:block", false)
-- vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
-- vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]

