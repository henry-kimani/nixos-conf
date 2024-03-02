return {
    'ThePrimeagen/harpoon',
    config = function()
        require("harpoon").setup({
            -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
            save_on_toggle = false,

            -- saves the harpoon file upon every change. disabling is unrecommended.
            save_on_change = true,

            -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
            enter_on_sendcmd = false,

            -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
            tmux_autoclose_windows = false,

            -- filetypes that you want to prevent from adding to the harpoon list menu.
            excluded_filetypes = { "harpoon" },

            -- set marks specific to each git branch inside git repository
            mark_branch = false,

            -- enable tabline with harpoon marks
            tabline = false,
            tabline_prefix = "   ",
            tabline_suffix = "   ",
        })

        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        local term = require("harpoon.term")

        vim.keymap.set("n", "<leader>a", mark.add_file)
        vim.keymap.set("n", "<leader>sh", ui.toggle_quick_menu)

        vim.keymap.set("n", "<C-`>1", function() term.gotoTerminal(1) end)
        vim.keymap.set("n", "<C-`>2", function() term.gotoTerminal(2) end)
        vim.keymap.set("n", "<C-`>3", function() term.gotoTerminal(3) end)

        vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end)
        vim.keymap.set("n", "<leader>n", function() ui.nav_next() end)                  -- navigates to next mark
        vim.keymap.set("n", "<leader>p", function() ui.nav_prev() end)

    end
}
