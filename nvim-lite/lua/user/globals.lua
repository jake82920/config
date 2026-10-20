vim.g.mapleader = ' '

vim.g.vimtex_view_method = 'zathura'

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Connects system clipboard to nvim clipboard
vim.api.nvim_create_autocmd('UIEnter', {
    callback = function()
        vim.o.clipboard = 'unnamedplus'
    end,
})
