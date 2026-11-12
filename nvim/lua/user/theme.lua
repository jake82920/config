-- Colorscheme
vim.o.termguicolors = true
vim.cmd("colorscheme default")

-- let terminal control background
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#5f875f", bg = "NONE" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#00ff00", bold = true })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })

-- make ~ (EndOfBuffer) blue
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#0000ff" })

-- Adds line styling
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true

-- Specify 4 spaces instead of tab, enforcing styleguide
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

vim.o.scrolloff = 10
vim.o.list = true
vim.o.confirm = true

-- Sets a nicer border for neotree, same as telescope
vim.api.nvim_set_hl(0, "NeoTreeNormal", { link = "TelescopeNormal" })
vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { link = "TelescopeBorder" })

-- Syntax / Tree-sitter
vim.api.nvim_set_hl(0, "@comment",     { fg = "#6a9955", italic = true })

vim.api.nvim_set_hl(0, "@keyword",     { fg = "#c586c0", italic = true })
vim.api.nvim_set_hl(0, "@keyword.return", { fg = "#c586c0", italic = true })

vim.api.nvim_set_hl(0, "@type",        { fg = "#4ec9b0", italic = true })
vim.api.nvim_set_hl(0, "@type.builtin",{ fg = "#4ec9b0" })

vim.api.nvim_set_hl(0, "@function",    { fg = "#dcdcaa" })
vim.api.nvim_set_hl(0, "@function.call", { fg = "#dcdcaa" })

vim.api.nvim_set_hl(0, "@variable",    { fg = "#9cdcfe" })
vim.api.nvim_set_hl(0, "@variable.parameter", { fg = "#9cdcfe" })

vim.api.nvim_set_hl(0, "@string",      { fg = "#ce9178" })
vim.api.nvim_set_hl(0, "@number",      { fg = "#b5cea8" })
vim.api.nvim_set_hl(0, "@boolean",     { fg = "#569cd6" })

vim.api.nvim_set_hl(0, "@operator",    { fg = "#d4d4d4" })
vim.api.nvim_set_hl(0, "@punctuation", { fg = "#d4d4d4" })

vim.api.nvim_set_hl(0, "@constant",    { fg = "#4fc1ff" })
vim.api.nvim_set_hl(0, "@property",    { fg = "#9cdcfe" })

-- Preprocessor (#include, #define, etc.)
vim.api.nvim_set_hl(0, "@keyword.directive", { fg = "#c586c0" })
vim.api.nvim_set_hl(0, "@module",            { fg = "#4ec9b0" })
