-- tele_oil.lua
-- Fuzzy-find directories with Telescope, open selected dir in Oil
-- Place in ~/.config/nvim/lua/ and require it, or drop into a plugin folder.
local M = {}
M.pick = function()
	require("telescope.builtin").find_files({
		prompt_title = "  Oil into directory",
		find_command = { "fd", "--type", "d" },
		attach_mappings = function(prompt_bufnr)
			local actions = require("telescope.actions")
			local action_state = require("telescope.actions.state")
			actions.select_default:replace(function()
				local entry = action_state.get_selected_entry()
				actions.close(prompt_bufnr)
				require("oil").open(entry.path or entry.value)
			end)
			return true
		end,
	})
end
vim.keymap.set("n", "<leader>od", M.pick, { desc = "Oil: pick directory" })

return {}
