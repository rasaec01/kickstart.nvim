local oil = {
	"stevearc/oil.nvim",
	config = function()
		local oil = require("oil")
		oil.setup({
			default_file_explorer = false,
		})

		vim.keymap.set("n", "<leader>e", function()
			if vim.bo.filetype == "oil" then
				oil.close()
			else
				oil.open()
			end
			open = not open
		end, { desc = "Toggle Oil" })
	end,
}
return oil
