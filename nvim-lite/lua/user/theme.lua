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

-- rose-pine style typography
vim.api.nvim_set_hl(0, "@comment", { italic = true })
vim.api.nvim_set_hl(0, "@keyword", { italic = true })
vim.api.nvim_set_hl(0, "@type", { italic = true })
vim.api.nvim_set_hl(0, "@keyword.return", { italic = true })

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
