vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>vs', '<cmd>:vsplit<CR>zz')
vim.keymap.set('n', '<leader>hs', '<cmd>:split<CR>zz')
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set({ 'n', 'v' }, '<leader>Y', [["+Y]])
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set('n', '<leader>f', '<cmd>Format<CR>')
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set({ 'n', 't' }, '<c-t><c-t>', '<cmd>:ToggleTerm<CR>')
vim.keymap.set('n', '<c-t>v', '<cmd>:ToggleTerm direction="vertical" size=70<CR>')
vim.keymap.set('n', '<c-t>h', '<cmd>:ToggleTerm direction="horizontal"<CR>')
vim.keymap.set({ 'n', 't' }, '<c-t><c-t>', '<cmd>:ToggleTerm<CR>')
vim.keymap.set('n', '<c-t>v', '<cmd>:ToggleTerm direction="vertical" size=70<CR>')
vim.keymap.set('n', '<c-t>h', '<cmd>:ToggleTerm direction="horizontal"<CR>')

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
        callback = function()
                vim.highlight.on_yank()
        end,
        group = highlight_group,
        pattern = '*',
})
