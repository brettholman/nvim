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
vim.api.nvim_create_user_command("Server", function()
	local overseer = require("overseer")
	overseer.run_template({ name = "make watch-api" }, function(task)
		if task then
			task:add_component({
				"restart_on_save",
				paths = { vim.fn.expand("%:p") },
			})
			local main_win = vim.api.nvim_get_current_win()
			overseer.run_action(task, "open hsplit")
			vim.api.nvim_set_current_win(main_win)
		else
			vim.notify(
				"WatchRun not supported for filetype "
					.. vim.bo.filetype,
				vim.log.levels.ERROR
			)
		end
	end)
end, {})
vim.api.nvim_create_user_command("Tests", function()
	local overseer = require("overseer")
	overseer.run_template({ name = "make test" }, function(task)
		if task then
			task:add_component({
				"restart_on_save",
				paths = { vim.fn.expand("%:p") },
			})
			local main_win = vim.api.nvim_get_current_win()
			overseer.run_action(task, "open hsplit")
			vim.api.nvim_set_current_win(main_win)
		else
			vim.notify(
				"WatchRun not supported for filetype "
					.. vim.bo.filetype,
				vim.log.levels.ERROR
			)
		end
	end)
end, {})
