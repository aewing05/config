return {
	'nvim-telescope/telescope.nvim', tag = '0.1.4',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{ "<leader>pf", "<Cmd>Telescope find_files<CR>", desc = "Find Files" },
		{ "<C-p>", "<Cmd>Telescope git_files<CR>", desc = "Find Git Files" },
		{
			"<leader>ps",
			function()
				require("telescope.builtin").grep_string({
					search = vim.fn.input({prompt = "Grep > "}),
				})
			end,
			desc = "Text Search",
		},
	},
    }

