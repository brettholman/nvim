return {
	"catppuccin/nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup({})
	end,
	init = function()
		vim.cmd("colorscheme catppuccin")
	end,
}
