require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
        },
        bind_to_cwd = true,
    },
    window = {
        position = "float",
        popup = { border = "single" },
        mappings = {
            ["H"] = "navigate_up",
            ["h"] = "close_node",
            ["L"] = "set_root",
            ["l"] = "open",
        },
    },
    use_popups_for_input = false,
})
