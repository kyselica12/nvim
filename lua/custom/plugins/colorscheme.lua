return {
    {
        'folke/tokyonight.nvim',
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme tokyonight]])
            -- vim.cmd([[colorscheme gruvbox]])
        end,
    },
    -- { 
    --     "ellisonleao/gruvbox.nvim",
    --      priority = 1000 ,
    --      config = true,
    --      opts = ...
    -- }

}
