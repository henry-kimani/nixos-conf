
-- namespace
local o = vim.opt

o.termguicolors = true
o.number = true
o.numberwidth = 4
o.relativenumber = true
o.cursorline = true
o.cursorlineopt = 'number'
o.showtabline = 2
o.linebreak = true
o.showbreak = "  » "
o.splitbelow = true
o.splitright = true
o.colorcolumn = "80";

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.scrolloff = 8

vim.opt.smartindent = true

vim.opt.wrap = false

--[[vim.cmd [[
  silent! colorscheme monokai-pro
   hi Normal guibg=#2d2a2e
]] --

vim.filetype.add({
  extension = {
    mdx = "mdx"
  }
})
