vim.filetype.add({
    extension = {
        lf = "lf",
    },
})

vim.lsp.config("lf", {
    filetypes = { "lf" },
    cmd = {
        "java",
        "-jar",
        vim.fn.expand("$HOME/.local/share/nvim/lf-lsp/lsp-0.13.0-all.jar")
    },
    root_markers = {
        ".git",
        "src",
    },
})

vim.lsp.enable({
    "lf",
})
