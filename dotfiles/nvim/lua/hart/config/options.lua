
-- namespace

vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'
vim.opt.showtabline = 2
vim.opt.linebreak = true
vim.opt.showbreak = "  » "
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.colorcolumn = "80";

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.scrolloff = 8

vim.opt.smartindent = true

vim.opt.wrap = false


vim.filetype.add({
  extension = {
    mdx = "mdx"
  }
})

