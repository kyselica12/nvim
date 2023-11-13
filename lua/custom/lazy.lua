local lazy = {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end

function lazy.setup(plugins)
  if vim.g.plugins_ready then
    return
  end

  -- You can "comment out" the line below after lazy.nvim is installed
  lazy.install(lazy.path)

  vim.opt.rtp:prepend(lazy.path)

  require('lazy').setup(plugins, lazy.opts)
  vim.g.plugins_ready = true
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

lazy.setup("custom/plugins")
--lazy.setup({
--  {'folke/tokyonight.nvim'},
--  {'nvim-lualine/lualine.nvim'},
--  {'nvim-treesitter/nvim-treesitter', build=':TSUpdate'},
--  {
--   'nvim-telescope/telescope.nvim', tag = '0.1.4',
--    dependencies = { 'nvim-lua/plenary.nvim' }
--  },
--  {'williamboman/mason.nvim'},
--  {'williamboman/mason-lspconfig.nvim'},
--  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
--  {'neovim/nvim-lspconfig'},
--  {'hrsh7th/cmp-nvim-lsp'},
--  {'hrsh7th/nvim-cmp'},
--  {'L3MON4D3/LuaSnip'},
--})


