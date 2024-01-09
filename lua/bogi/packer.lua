vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        requires = { { "nvim-lua/plenary.nvim" } }
    })
    use({
        "rose-pine/neovim",
        as = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine")
        end
    })
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use("nvim-treesitter/playground")
    use("nvim-lualine/lualine.nvim")
    use("windwp/nvim-autopairs")
    use("numToStr/Comment.nvim")
    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        requires = {
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
    }
    use("lewis6991/gitsigns.nvim")
    use({ "akinsho/toggleterm.nvim", tag = "*" })
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use("lukas-reineke/indent-blankline.nvim")
    use({
        "folke/trouble.nvim",
        requires = { { "nvim-tree/nvim-web-devicons" } },
    })
    use("tpope/vim-fugitive")
end)
