local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

--to ensure the mappings are correct
--vim.g.mapleader = " "

-- to confugre lazy using scripts in plugins
--require("lazy").setup({ { import = "hart.plugins"}, { import = "hart.plugins.lsp"} })
require("lazy").setup("hart.plugins")


