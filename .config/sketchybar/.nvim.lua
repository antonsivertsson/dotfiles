vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = {
		"*/sketchybar/*.sh",
		"*/sketchybar/sketchybarrc",
		"*/sketchybar/*.lua",
	},
	callback = function()
		vim.cmd("!sketchybar --reload")
	end,
})
