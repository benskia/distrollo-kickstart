return {
    {
        'catppuccin/nvim',
        -- 'rose-pine/neovim',
        priority = 1000, -- Make sure to load this before all the other start plugins.
        init = function()
            vim.cmd.colorscheme 'catppuccin-mocha'
            -- vim.cmd.colorscheme 'rose-pine'

            -- Configure
            vim.cmd.hi 'Comment gui=none'

            -- Clear background
            -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
            -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
        end,
    },
}
-- vim: ts=2 sts=2 sw=2 et
