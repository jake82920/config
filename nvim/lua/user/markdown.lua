local M = {}

function M.follow_link()
    local line = vim.api.nvim_get_current_line()
    local col = vim.api.nvim_win_get_cursor(0)[2] + 1

    -- Find every Markdown link on the line.
    for s, text, target, e in line:gmatch("()(%b[])%((.-)%)()") do
        if col >= s and col <= e then
            vim.cmd.edit(vim.fn.fnameescape(target))
            return
        end
    end

    -- Fall back to Vim's normal gf.
    vim.cmd.normal({ "gf", bang = true })
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function(event)
        vim.keymap.set("n", "gf", M.follow_link, {
            buffer = event.buf,
            desc = "Follow Markdown link",
        })
    end,
})

return M
