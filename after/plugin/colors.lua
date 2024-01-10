require("rose-pine").setup({
    variant = "auto",
    disable_background = true,
    dark_variant = "moon",
})

function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme("rose-pine")

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
