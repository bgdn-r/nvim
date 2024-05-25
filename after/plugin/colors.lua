require("rose-pine").setup({
    variant = "moon",      -- auto, main, moon, or dawn
    dark_variant = "moon", -- main, moon, or dawn
    dim_inactive_windows = false,
    extend_background_behind_borders = true,

    styles = {
        bold = false,
        italic = true,
        transparency = true,
    },
})

function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)
    vim.cmd.colorscheme("github_dark_tritanopia")

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
