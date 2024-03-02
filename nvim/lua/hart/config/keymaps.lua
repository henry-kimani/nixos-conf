local k = vim.keymap

vim.g.mapleader = " "
k.set('n', '<leader>e', vim.cmd.Ex)
k.set('n', '<C-s>', vim.cmd.w)
k.set('n', '<C-`>', vim.cmd.terminal)
