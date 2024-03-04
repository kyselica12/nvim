
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
-- vim.opt.syntax = 'on'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = false
vim.opt.breakindent = true

vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.encoding = 'utf-8'

vim.g.mapleader = " "

vim.g.netrw_banner = 0

vim.g.loaded_matchparem = 1

require('custom.remaps')
require('custom.lazy')
--require('lazy').setup("plugins")


