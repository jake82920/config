return {
    cmd = {
        'java',
        '-jar',
        vim.fn.expand('$HOME/.local/share/nvim/lf-lsp/lsp-0.13.0-all.jar'),
    },

    filetypes = { 'lf' },

    root_markers = {
        '.git',
    },
}
