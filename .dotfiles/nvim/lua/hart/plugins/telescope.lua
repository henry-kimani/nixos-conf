return{
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
        'nvim-lua/plenary.nvim'
    },

	config = function()
        local actions = require('telescope.actions')
		require('telescope').setup({
            mappings = {
                i = {
                    ["<esc>"] = actions.close,
                },
            },
        })
        -- keymaps for this configuration
		local builtin = require('telescope.builtin')
		local k = vim.keymap
		k.set('n', '<leader>pf', builtin.find_files, {})
		k.set('n', '<C-p>', builtin.git_files, {})
		k.set('n', '<leader>ps', function()
			builtin.grep_string({search = vim.fn.input("Grep > ")})
		end)
		k.set('n', '<leader>vh', builtin.help_tags, {})
	end
}


