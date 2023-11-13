return {
  {'folke/tokyonight.nvim'},
  {'nvim-lualine/lualine.nvim'},
  {'nvim-treesitter/nvim-treesitter', build=':TSUpdate'},
  {
   'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {'williamboman/mason.nvim',
  opts = {
    ensure_isntalled = {
        "pyright",
        "black",
    },
  },
  },
  {'williamboman/mason-lspconfig.nvim'},
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  --{'christoomey/vim-tmux-navigator.nvim'},
  {"alexghergh/nvim-tmux-navigation"},
  {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 600
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    }
  },
  {'kyazdani42/nvim-tree.lua',
        dependencies = {'kyazdani42/nvim-web-devicons'},
  },
  { 'numToStr/Comment.nvim', opts = {} },
}
