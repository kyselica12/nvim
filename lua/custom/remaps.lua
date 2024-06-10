
vim.keymap.set('n', '<Leader>w', '<cmd>w<cr>')
vim.keymap.set('n', '<Leader>x', '<cmd>x<cr>')
vim.keymap.set('n', '<Leader>q', '<cmd>q<cr>')

vim.keymap.set('n', 'Q', '@q')


vim.keymap.set('n', '<C-H>', '<C-W>h')
vim.keymap.set('n', '<C-J>', '<C-W>j')
vim.keymap.set('n', '<C-K>', '<C-W>k')
vim.keymap.set('n', '<C-L>', '<C-W>l')
vim.keymap.set('n', '<C-D>', '<C-D>zz')
vim.keymap.set('n', '<C-U>', '<C-U>zz')

--vim.keymap.set('n', '<C-N>', '<cmd>Lexplore<cr>')

vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv")
vim.keymap.set('v', '<', "<gv")
vim.keymap.set('v', '>', ">gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>sj", "<cmd>sv<cr>")
vim.keymap.set("n", "<leader>sl", "<cmd>vsplit<cr>")
vim.keymap.set("n", "<leader>t", "<cmd>tabnew<cr>")

-- vim.keymap.set('n', '<Tab>', '<cmd>tabnext<cr>')
vim.keymap.set("n", "<Tab>", "<cmd>bNext<cr>")
vim.keymap.set("n", "<S-Tab>", "<cmd>bprev<cr>")
-- vim.keymap.set("n", "<Shift><Tab>", "<cmd>bNext<cr>")

