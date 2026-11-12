vim.pack.add({
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/nvim-neo-tree/neo-tree.nvim" },
    { src = "https://github.com/MunifTanjim/nui.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
})

require('telescope').setup({
    defaults = {
        color_devicons = true,
    },
    pickers = {
        find_files = {
            hidden = true
        },
    },
})

require('neo-tree').setup({
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
        },
        bind_to_cwd = true,
    },
    window = {
        position = 'float',
        popup = { border = 'single' },
        mappings = {
            ['H'] = 'navigate_up',
            ['h'] = 'close_node',
            ['L'] = 'set_root',
            ['l'] = 'open',
        },
    },
    use_popups_for_input = false,
})
