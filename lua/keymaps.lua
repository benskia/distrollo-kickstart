-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- vim: ts=2 sts=2 sw=2 et

-- Custom Keymaps
vim.keymap.set({ 'n', 'v', 'i' }, '<C-c>', '<Esc>', { desc = 'Ctrl+C mimics Escape' })

vim.keymap.set('n', '<leader>80', '80|wF<Space>r<CR>', { desc = 'Replaces the space near linelength 80 with newine' })

vim.keymap.set({ 'n', 't' }, '<leader>x', '<Cmd>x<CR>', { desc = 'Kill current buffer' })

vim.keymap.set('n', 'gg', 'ggzz', { desc = 'Center screen after goto start' })
vim.keymap.set('n', 'G', 'Gzz', { desc = 'Center screen after goto end' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center screen after 1/2 page down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center screen after 1/2 page up' })

vim.keymap.set('n', '<leader>zm', '<Cmd>ZenMode<CR>', { desc = 'Toggle ZenMode' })
