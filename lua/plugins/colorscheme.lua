-- return {
-- 	"catppuccin/nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("catppuccin").setup({})
-- 	end,
-- 	init = function()
-- 		vim.cmd("colorscheme catppuccin")
-- 	end,
-- }

-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	config = function()
-- 		require("rose-pine").setup({})
-- 	end,
-- }

-- return {
-- 	"folke/tokyonight.nvim",
-- 	config = function()
-- 		require("tokyonight").setup({
-- 			-- your configuration comes here
-- 			-- or leave it empty to use the default settings
-- 			style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
-- 			terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
-- 			styles = {
-- 				-- Style to be applied to different syntax groups
-- 				-- Value is any valid attr-list value for `:help nvim_set_hl`
-- 				comments = { italic = false },
-- 				keywords = { italic = false },
-- 				-- Background styles. Can be "dark", "transparent" or "normal"
-- 				sidebars = "dark", -- style for sidebars, see below
-- 				floats = "dark", -- style for floating windows
-- 			},
-- 		})
-- 	end,
-- }
return {
	"rebelot/kanagawa.nvim",
}
-- return {
-- 	"rose-pine/neovim",
-- }
