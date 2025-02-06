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
      --[[
            vim.cmd [[
              autocmd BufEnter *.md setlocal colorscheme=gruvbox
            ]] --

      vim.cmd.colorscheme "monokai-pro"
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    event = "VeryLazy",
    config = function()
      --        vim.cmd.colorscheme "gruvbox"
    end,
  },
  {
    'sainnhe/gruvbox-material',
    lazy = true,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      -- vim.cmd.colorscheme('gruvbox-material')
    end
  },
  {
    'dracula/vim',
    name = 'dracula',
    event = "VeryLazy",
    config = function ()
      --            vim.cmd.colorscheme "dracula"
    end
  },
  {
    "folke/tokyonight.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = 'strom',
      })
      --           vim.cmd.colorscheme "tokyonight"
    end
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
