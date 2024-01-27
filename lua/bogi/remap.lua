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
-- vim.keymap.set('v', "<leader>T", "[[:%s/\(.*\)/(\1);]]")
function WrapLinesWithCommand()
    -- Prompt the user to enter a command
    local cmd = vim.fn.input('Enter command to wrap lines: ')

    -- Exit if the command is empty
    if cmd == '' then
        return
    end

    -- Get the range of the selected lines
    local start_line = vim.fn.line("'<")
    local end_line = vim.fn.line("'>")

    -- Apply the command to each line in the selected range
    for line_num = start_line, end_line do
        local line_content = vim.fn.getline(line_num)
        local new_line = cmd .. '(' .. line_content .. ');'
        vim.fn.setline(line_num, new_line)
    end
end

vim.keymap.set('v', '<leader>T', ":lua WrapLinesWithCommand()<CR>")

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})
