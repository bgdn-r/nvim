local lsp_zero = require("lsp-zero")
local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()
local cmp_select = { behavior = cmp.SelectBehavior.Select }
require("mason").setup({})

cmp.setup({
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
    })
})

lsp_zero.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspacer_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostics.open_float() end, opts)
    vim.keymap.set("n", "<leader>[d", function() vim.diagnostics.goto_next()() end, opts)
    vim.keymap.set("n", "<leader>]d", function() vim.diagnostics.goto_prev()() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.ls.buf.signature_help() end, opts)
    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
        vim.lsp.buf.format()
    end, { desc = 'Format current buffer with LSP' })
end)

require("lspconfig").bashls.setup({})
require("lspconfig").dagger.setup({})
require("lspconfig").dockerls.setup({})
require("lspconfig").docker_compose_language_service.setup({})
require("lspconfig").dotls.setup({})
require("lspconfig").emmet_ls.setup({})
require("lspconfig").golangci_lint_ls.setup({})
require("lspconfig").gopls.setup({})
require("lspconfig").html.setup({})
require("lspconfig").jqls.setup({})
require("lspconfig").jsonls.setup({})
require("lspconfig").lua_ls.setup {
    on_init = function(client)
        local path = client.workspace_folders[1].name
        if not vim.loop.fs_stat(path .. "/.luarc.json") and not vim.loop.fs_stat(path .. "/.luarc.jsonc") then
            client.config.settings = vim.tbl_deep_extend("force", client.config.settings, {
                Lua = {
                    runtime = {
                        -- Tell the language server which version of Lua you"re using
                        -- (most likely LuaJIT in the case of Neovim)
                        version = "LuaJIT"
                    },
                    -- Make the server aware of Neovim runtime files
                    workspace = {
                        checkThirdParty = false,
                        library = {
                            vim.env.VIMRUNTIME
                            -- "${3rd}/luv/library"
                            -- "${3rd}/busted/library",
                        }
                        -- or pull in all of "runtimepath". NOTE: this is a lot slower
                        -- library = vim.api.nvim_get_runtime_file("", true)
                    }
                }
            })

            client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
        end
        return true
    end
}
require("lspconfig").nginx_language_server.setup({})
-- require("lspconfig").sqls.setup({})
require("lspconfig").templ.setup({})
vim.filetype.add({ extension = { templ = "templ" } })
require("lspconfig").html.setup({ filetypes = { "html", "templ" } })
require("lspconfig").terraformls.setup({})
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*.tf", "*.tfvars" },
    callback = function()
        vim.lsp.buf.format()
    end,
})
require("lspconfig").tsserver.setup({})
require("lspconfig").vimls.setup({})
require("lspconfig").yamlls.setup({
    command = { "yaml-language-server", "--stdio" }
})
require("lspconfig").pyright.setup({})
require("lspconfig").templ.setup({})
local blackGroup = vim.api.nvim_create_augroup("Black", { clear = true })
vim.api.nvim_create_autocmd("bufWritePost", {
    pattern = "*.py",
    command = "silent !black %",
    group = blackGroup,
})
lsp_zero.setup()
vim.diagnostic.config({
    virtual_text = true
})
require("lspconfig").rls.setup({})
require("lspconfig").rust_analyzer.setup {}
