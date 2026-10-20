vim.lsp.config("clangd",
    {
        filetypes = {
            "c",
            "cpp",
            "objc",
            "objcpp",
            "cuda",
        },
    })

vim.lsp.enable("clangd")
