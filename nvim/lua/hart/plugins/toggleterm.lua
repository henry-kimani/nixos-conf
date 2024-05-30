return {
    'akinsho/toggleterm.nvim',
    event="VeryLazy",
    version = "*",
    config = function ()
        local status_ok, toggleterm = pcall(require, "toggleterm")
        if not status_ok then
            print("Failed!")
            return
        end
        local term_direction = "float"
        function TERM_DIRECTION(direction)
            term_direction = direction
        end
        toggleterm.setup({
            size = 50,
            --[[
            function (term)
                if term.direction == "horizontal" then
                    return 15
                elseif term.direction == "vertical" then
                    return 15
                end
            end,
            ]]--
            open_mapping = [[<c-\>]],
            hide_numbers = true,
            shade_terminals = true,
            shading_factor = 2,
            start_in_insert = true,
            insert_mappings = true,
            persist_size = true,
            direction = term_direction,
            close_on_text = true,
            shell = vim.o.shell,
            float_opts = {
                border = 'curved',
                winblend = 0,
                highlights = {
                    border = 'Normal',
                    background = 'Normal',
                },
            },
        })
        function _G.set_terminal_keymaps()
            local opts = {buffer = 0}
            vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
            vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
            vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
            vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
            vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
            vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
            vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
        end

        -- if you only want these mappings for toggle term use term://*toggleterm#* instead
        vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
        -- ========== CUSTOM TERMINALS =============

        local Terminal  = require('toggleterm.terminal').Terminal

        local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
        function _LAZYGIT_TOGGLE()
            lazygit:toggle()
        end

        vim.api.nvim_set_keymap("n",
            "<leader>g",
            "<cmd>lua _LAZYGIT_TOGGLE()<CR>",
            {noremap = true, silent = true}
        )

        local node = Terminal:new({ cmd = 'node', hidden = true })
        function _NODE_TOGGLE()
            node:toggle()
        end

        vim.api.nvim_set_keymap("n",
            "<leader>d",
            "<cmd>lua _NODE_TOGGLE()<CR>",
            {noremap=true, silent=true}
        )

        local python = Terminal:new({ cmd = "python3", hidden = true })
        function _PYTHON_TOGGLE()
            python:toggle()
        end

    end
}
