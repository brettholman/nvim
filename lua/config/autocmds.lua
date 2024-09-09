-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "c", "cpp", "py", "java", "cs" },
	callback = function()
		vim.bo.shiftwidth = 4
	end,
	group = general,
	desc = "Set shiftwidth to 4 in these filetypes",
})

vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave", "BufWinLeave", "InsertLeave" }, {
	callback = function()
		if vim.bo.filetype ~= "" and vim.bo.buftype == "" then
			vim.cmd("silent! noa w")
		end
	end,
	group = general,
	desc = "Auto Save",
})
