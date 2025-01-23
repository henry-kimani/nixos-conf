local k = vim.keymap

vim.g.mapleader = " "
k.set('n', '<leader>e', vim.cmd.Ex)
k.set('n', '<C-s>', vim.cmd.w)
k.set('n', '<C-`>', vim.cmd.terminal)
k.set('n', '<leader>t', vim.cmd.Trouble)

k.set('n', '<leader>r', '<cmd>nohlsearch<CR>')

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 500 }
  end,
})

