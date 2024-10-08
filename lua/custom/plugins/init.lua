-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	'tpope/vim-vinegar',

	{ 'folke/zen-mode.nvim', opts = {
		window = {
			backdrop = 1,
		},
	} },

	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				-- config
			}
		end,
		dependencies = { { 'nvim-tree/nvim-web-devicons' } },
	},

	{
		'Aasim-A/scrollEOF.nvim',
		event = { 'CursorMoved', 'WinScrolled' },
		opts = {},
	},
}
