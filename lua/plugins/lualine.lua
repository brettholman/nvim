return {
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			sections = {
				lualine_z = {},
			},
		},
		-- event = "VeryLazy",
		-- opts = function(_, opts)
		-- 	local trouble = require("trouble")
		-- 	local symbols = trouble.statusline({
		-- 		mode = "lsp_document_symbols",
		-- 		groups = {},
		-- 		title = false,
		-- 		filter = { range = true },
		-- 		format = "{kind_icon}{symbol.name:Normal}",
		-- 		-- The following line is needed to fix the background color
		-- 		-- Set it to the lualine section you want to use
		-- 		hl_group = "lualine_c_normal",
		-- 	})
		-- 	table.insert(opts.sections.lualine_c, {
		-- 		symbols.get,
		-- 		cond = symbols.has,
		-- 	})
		-- end,
	},

	-- or you can return new options to override all the defaults
	-- {
	-- 	"nvim-lualine/lualine.nvim",
	-- 	event = "VeryLazy",
	-- 	opts = function()
	-- 		return {
	-- 			--[[add your custom lualine config here]]
	-- 		}
	-- 	end,
	-- },
}
