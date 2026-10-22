local disabled = {
    markdown = true,
    text = true,
    gitcommit = true,
    tex = true,
}

local blink = require("blink.cmp")

blink.setup({
    keymap = {
        preset = "default",

        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<CR>"] = { "fallback" },
        ["<C-y>"] = { "accept" },
    },

    enabled = function()
        return not disabled[vim.bo.filetype]
    end
})
blink.build():pwait()
