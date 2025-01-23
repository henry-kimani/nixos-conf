return {
    {
        "loctvl842/monokai-pro.nvim",
        
        config = function()
            require("monokai-pro").setup({
                terminal_colors = true,
                filter = "octagon",
                bold = true,
            })
      --[[
            vim.cmd [[
              autocmd BufEnter *.md setlocal colorscheme=gruvbox
            ]]

            vim.cmd.colorscheme "monokai-pro"
        end
    },
    {
      "ellisonleao/gruvbox.nvim", 
      priority = 1000 , 
      config = function() 
--        vim.cmd.colorscheme "gruvbox"
      end, 
    },
    {
        'dracula/vim',
        name = 'dracula',
        event = "VeryLazy",
        config = function ()
--            vim.cmd.colorscheme "dracula"
        end
    },
    --[[{
        'catppuccin/vim',
        event = "VeryLazy",
        name = 'catppuccin',
        config = function ()
            --    vim.cmd.colorscheme 'catppuccin_mocha'
        end
    }]]--,
    {
        "folke/tokyonight.nvim",
        lazy = false,
        event = "VeryLazy",
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                style = 'strom',
            })
            --           vim.cmd.colorscheme "tokyonight"
        end
    }
}
