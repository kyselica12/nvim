
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
  vim.keymap.set('n', '<leader>o', api.node.open.tab, opts('Open: New Tab'))
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

vim.keymap.set('n', '<C-N>', '<cmd>NvimTreeToggle<cr>')

