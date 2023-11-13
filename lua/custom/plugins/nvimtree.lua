return {
    {
        'kyazdani42/nvim-tree.lua',
        dependencies = {'kyazdani42/nvim-web-devicons'},
        priority=1000,
        lazy=false,
        config = function()
            local function my_on_attach(bufnr)
              local api = require "nvim-tree.api"

              local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
              end

              -- default mappings
              api.config.mappings.default_on_attach(bufnr)

              -- custom mappings
              vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
              vim.keymap.set('n', 'l',     api.node.open.edit,                    opts('Open'))
              vim.keymap.set('n', 'h',     api.node.navigate.parent_close,        opts('Open'))
              vim.keymap.set('n', '|',     api.node.open.vertical,                opts('Open: Vertical Split'))
              vim.keymap.set('n', 't', api.node.open.tab, opts('Open: New Tab'))
            end

            local tree = require("nvim-tree")
            local config = {
              on_attach = my_on_attach,
              git = {
                  enable = true,
                  ignore = false,
                  timeout = 500,
              }
            }

            tree.setup(config)
        end,

        keys = {
            {"<leader>e", "<cmd>NvimTreeToggle<cr>", desc="NvimTree"},
        },
    }, 
}
