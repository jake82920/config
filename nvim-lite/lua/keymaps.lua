-- Map <A-j>, <A-k>, <A-h>, <A-l> to navigate between windows in any modes
vim.keymap.set({ 't', 'i' }, '<A-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set({ 't', 'i' }, '<A-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set({ 't', 'i' }, '<A-k>', '<C-\\><C-n><C-w>k')
vim.keymap.set({ 't', 'i' }, '<A-l>', '<C-\\><C-n><C-w>l')
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-k>', '<C-w>k')
vim.keymap.set('n', '<A-l>', '<C-w>l')

-- Map tab generation
vim.keymap.set('n', '<leader>nt', '<cmd>tabnew<CR>')
vim.keymap.set('n', '<leader>ct', '<cmd>tabclose<CR>')
vim.keymap.set('n', '<leader>ot', '<cmd>tabonly<CR>')

-- theprimeagen keymaps
vim.keymap.set('x', '<leader>p', [["_dP]])
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

-- Recommended keymaps for telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>/', telescope.current_buffer_fuzzy_find, { desc = 'Fuzzy search current buffer' })

-- Neotree keymaps
vim.keymap.set('n', '<leader>t', '<cmd>Neotree toggle<CR>', { desc = 'Toggle Neo-tree' })

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'neo-tree',
    callback = function(ev)
        vim.keymap.set('n', 'q', '<cmd>qa<CR>', { buffer = ev.buf })
    end,
})

-- Source keymap
vim.keymap.set('n', '<leader>so', '<cmd>update<CR><cmd>source $MYVIMRC<CR>')

-- Markdown file creator function
local M = {}

function M.follow_link()
    local line = vim.api.nvim_get_current_line()
    local col = vim.api.nvim_win_get_cursor(0)[2] + 1

    -- Find every Markdown link on the line.
    for s, text, target, e in line:gmatch('()(%b[])%((.-)%)()') do
        if col >= s and col <= e then
            vim.cmd.edit(vim.fn.fnameescape(target))
            return
        end
    end

    -- Fall back to Vim's normal gf.
    vim.cmd.normal({ 'gf', bang = true })
end

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'markdown',
    callback = function(event)
        vim.keymap.set('n', 'gf', M.follow_link, {
            buffer = event.buf,
            desc = 'Follow Markdown link',
        })
    end,
})

return M
