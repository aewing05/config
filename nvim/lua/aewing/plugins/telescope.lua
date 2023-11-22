return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.4',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'BurntSushi/ripgrep',
	},
	keys = {
		{'<leader>pf', "<cmd>Telescope find_files<cr>", desc = "Find files"},
		{'<C-p>', "<cmd>Telescope git_files<cr>", desc = "Find git files"},
		{
			'<leader>ps',
			"",
			desc = "Project search",
		},
	},
	config = function()
		vim.keymap.set('n', '<leader>ps', function()
			require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })
		end)
	end
    }
