return {
    "alexghergh/nvim-tmux-navigation",
    keys={
        {'<C-h>', '<CMD>NvimTmuxNavigateLeft<CR>', desc="Tmux left"},
        {'<C-l>', '<CMD>NvimTmuxNavigateRight<CR>', desc="Tmux right"},
        {'<C-j>', '<CMD>NvimTmuxNavigateDown<CR>', desc="Tmux down"},
        {'<C-k>', '<CMD>NvimTmuxNavigateUp<CR>', desc="Tmux up"},
    },
    config = function ()
       require("nvim-tmux-navigation").setup({})
    end,
    -- lazy=false,
}
