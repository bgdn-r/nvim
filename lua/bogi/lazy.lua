local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { "rose-pine/neovim",       name = "rose-pine" },
    "nvim-lua/plenary.nvim",
    {
        "nvim-telescope/telescope.nvim",
        dependencies = "nvim-lua/plenary.nvim",
        tag = "0.1.5",
    },
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        dependencies = {
            --- Uncomment these if you want to manage the language servers from neovim
            -- {"williamboman/mason.nvim", run = function() pcall(vim.cmd, "MasonUpdate") end},
            -- {"williamboman/mason-lspconfig.nvim"},

            -- LSP Support
            { "neovim/nvim-lspconfig" },
            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" },
        }
    },
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/playground",
    "windwp/nvim-autopairs",
    "numToStr/Comment.nvim",
    "lewis6991/gitsigns.nvim",
    { "akinsho/toggleterm.nvim" },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    "lukas-reineke/indent-blankline.nvim",
    { "folke/trouble.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
    "tpope/vim-fugitive",
})
