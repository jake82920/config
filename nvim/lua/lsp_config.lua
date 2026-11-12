-- Lingua Franca setup
vim.filetype.add({
    extension = {
        lf = 'lf',
    },
})

vim.lsp.config('lf', {
    cmd = {
        'java',
        '-jar',
        vim.fn.expand('$HOME/.local/share/nvim/lf-lsp/lsp-0.13.0-all.jar'),
    },
    filetypes = { 'lf' },
    root_markers = { '.git' },
})

-- Lua setup
vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            },
        },
    },
})

-- clangd setup
vim.lsp.config('clangd', {
    filetypes = {
        'c',
        'cpp',
        'objc',
        'objcpp',
    },
})

vim.lsp.enable({ 'lua_ls', 'clangd', 'lf' })
vim.diagnostic.config({ virtual_text = true })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

-- vim.lsp autocomplete
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)

        if client and client:supports_method('textDocument/completion') then
            local chars = {}

            for i = 32, 126 do
                table.insert(chars, string.char(i))
            end

            client.server_capabilities.completionProvider.triggerCharacters = chars

            vim.lsp.completion.enable(true, client.id, ev.buf, {
                autotrigger = true,
            })
        end
    end,
})

vim.opt.completeopt = {
    'menu',
    'menuone',
    'noselect',
}
