return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp'},
        {'L3MON4D3/LuaSnip'},
    },
    config = function()
        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(client, bufnr)
          local opts = {buffer = bufnr, remap = false, desc="test"}

          vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, {buffer=bufnr, remap=false,desc = "Go to definition"})
          vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, {buffer=bufnr, remap=false, desc ="References"})
          vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, {buffer=bufnr, remap=false, desc ="Hover"})
          vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, {buffer=bufnr, remap=false, desc ="Workspace symbol"})
          vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, {buffer=bufnr, remap=false, desc ="Open diagnostic"})
          vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, {buffer=bufnr, remap=false, desc ="Goto Next diagnostic"})
          vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, {buffer=bufnr, remap=false, desc ="Goto Prev diagnostic"})
          vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, {buffer=bufnr, remap=false, desc ="Code actions"})
          vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, {buffer=bufnr, remap=false, desc ="Rename"})
          vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, {buffer=bufnr, remap=false, desc ="Signature-help"})
        end)

        require('mason').setup({})
        require('mason-lspconfig').setup({
          ensure_installed = {'pyright', 'rust_analyzer'},
          handlers = {
            lsp_zero.default_setup,
            lua_ls = function()
              local lua_opts = lsp_zero.nvim_lua_ls()
              require('lspconfig').lua_ls.setup(lua_opts)
            end,
          }
        })

        local cmp = require('cmp')
        local cmp_select = {behavior = cmp.SelectBehavior.Select}

        cmp.setup({
          sources = {
            {name = 'path'},
            {name = 'nvim_lsp'},
            {name = 'nvim_lua'},
          },
          formatting = lsp_zero.cmp_format(),
          mapping = cmp.mapping.preset.insert({
            ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
            ['<Tab>'] = cmp.mapping.confirm({ select = true }),
            ['<C-Space>'] = cmp.mapping.complete(),
          }),
        })
    end,
}
