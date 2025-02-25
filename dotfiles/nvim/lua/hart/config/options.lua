
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

o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true

o.scrolloff = 8

o.smartindent = true

o.wrap = false


vim.filetype.add({
  extension = {
    mdx = "mdx"
  }
})

