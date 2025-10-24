return {
  {
    "loctvl842/monokai-pro.nvim",
    commit = "aafde73a622435891d36b411d8623e705ead6293",
    config = function()
      require("monokai-pro").setup({
        terminal_colors = true,
        filter = "octagon",
        bold = true,
      })

      vim.cmd.colorscheme("monokai-pro")
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    event = "VeryLazy",
  },
  {
    "sainnhe/sonokai",
    event = "VeryLazy",
    config = function ()
      vim.g.sonokai_enable_italic = true
      vim.g.sonokai_style = "andromeda"
      -- vim.cmd.colorscheme("sonokai")
    end
  }
}
