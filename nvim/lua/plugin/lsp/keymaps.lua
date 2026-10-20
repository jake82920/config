local builtin = require("telescope.builtin")

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        local client = vim.lsp.get_client_by_id(event.data.client_id)

        vim.notify(
            string.format(
                "Attached %s to %s",
                client.name,
                vim.bo[event.buf].filetype
            ),
            vim.log.levels.INFO
        )

        local map = function(lhs, rhs, desc)
            vim.keymap.set("n", lhs, rhs, {
                buffer = event.buf,
                silent = true,
                desc = desc,
            })
        end

        -- Navigation
        map("gd", builtin.lsp_definitions, "Definition")
        map("gr", builtin.lsp_references, "References")
        map("gi", builtin.lsp_implementations, "Implementation")
        map("gt", builtin.lsp_type_definitions, "Type Definition")
        map("gD", vim.lsp.buf.declaration, "Declaration")
        map("K", vim.lsp.buf.hover, "Hover")

        -- Refactoring
        map("<leader>rn", vim.lsp.buf.rename, "Rename")
        map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
        map("<leader>f", function()
            vim.lsp.buf.format({ async = true })
            vim.notify("Formatted", vim.log.levels.INFO)
        end, "Format")

        -- Symbols
        map("<leader>ds", builtin.lsp_document_symbols, "Document Symbols")
        map("<leader>ws", builtin.lsp_workspace_symbols, "Workspace Symbols")

        -- Diagnostics
        map("[d", vim.diagnostic.goto_prev, "Previous Diagnostic")
        map("]d", vim.diagnostic.goto_next, "Next Diagnostic")
        map("<leader>e", vim.diagnostic.open_float, "Line Diagnostics")
    end,
})

vim.api.nvim_create_autocmd("LspDetach", {
    callback = function(event)
        local client = vim.lsp.get_client_by_id(event.data.client_id)

        vim.notify(
            string.format(
                "Detached %s from %s",
                client.name,
                vim.bo[event.buf].filetype
            ),
            vim.log.levels.INFO
        )
    end,
})
