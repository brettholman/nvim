return {
	name = "dotnet tests",
	builder = function()
		local file = vim.fn.expand("%:p")
		local cmd = { file }
		if vim.bo.filetype == "cs" then
			print("Did we get here")
			print(file)
			cmd = { "$(which dotnet) test" }
		end
		return {
			cmd = cmd,
			components = {
				{
					"on_output_quickfix",
					set_diagnostics = true,
				},
				"on_result_diagnostics",
				"default",
			},
		}
	end,
	condition = {
		filetype = { "cs" },
	},
}
