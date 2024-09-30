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
vim.keymap.set('t', '<C-c>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
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
vim.keymap.set({ 'n', 'v', 'i' }, '<C-s>', '<Esc><Esc><Cmd>w<CR>', { desc = 'Esc and save' })

vim.keymap.set('n', '<leader>80', '81|F<Space>r<CR>', { desc = 'Replaces the space near linelength 80 with newine' })

vim.keymap.set({ 'n', 't' }, '<leader>x', '<Cmd>x<CR>', { desc = 'Kill current buffer' })

vim.keymap.set('n', 'gg', 'ggzz', { desc = 'Center screen after goto start' })
vim.keymap.set('n', 'G', 'Gzz', { desc = 'Center screen after goto end' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center screen after 1/2 page down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center screen after 1/2 page up' })

vim.keymap.set('n', '<leader>z', '<Cmd>ZenMode<CR>', { desc = 'Toggle ZenMode' })
