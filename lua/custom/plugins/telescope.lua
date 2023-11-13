return {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        {'<leader>ff', '<cmd>Telescope find_files<cr>', desc='Find files'},        
        {'<leader>fg', '<cmd>Telescope live_grep<cr>', desc='Live grep'},        
        {'<leader>fh', '<cmd>Telescope help_tags<cr>', desc='Help tags'},        
    },
}
