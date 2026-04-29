local oil = {
	"stevearc/oil.nvim",
	config = function()
		local oil = require("oil")
		oil.setup({
			default_file_explorer = false,
		})

		vim.keymap.set("n", "<leader>e", function()
			oil.open()
		end, { desc = "Open Oil" })
		vim.keymap.set("n", "<leader>E", function()
			oil.close()
		end, { desc = "Close Oil" })
	end,
}
return oil
