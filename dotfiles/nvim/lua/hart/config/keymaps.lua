vim.g.mapleader = " "

vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('n', '<C-s>', vim.cmd.w)
vim.keymap.set('i', 'jk', '<C-[>')

vim.keymap.set('n', '<leader>td', vim.cmd.Trouble)
vim.keymap.set('n', '<leader>tn', vim.cmd.tabnew)
vim.keymap.set('n', '<leader>tc', vim.cmd.Tabclose)

vim.keymap.set('n', '<leader>r', '<cmd>nohlsearch<CR>')

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({ higroup = 'IncSearch', timeout = 150 })
  end,
})

