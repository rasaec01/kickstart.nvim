return { -- Adds git related signs to the gutter, as well as utilities for managing changes
	"lewis6991/gitsigns.nvim",
	opts = {
		signs = {
			add = { text = "+" }, ---@diagnostic disable-line: missing-fields
			change = { text = "~" }, ---@diagnostic disable-line: missing-fields
			delete = { text = "_" }, ---@diagnostic disable-line: missing-fields
			topdelete = { text = "‾" }, ---@diagnostic disable-line: missing-fields
			changedelete = { text = "~" }, ---@diagnostic disable-line: missing-fields
		},
		on_attach = function(bufnr)
			local gitsigns = require("gitsigns")

			local function map(mode, l, r, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, l, r, opts)
			end

			-- FOR REVIEW CHANGES
			map("n", "<leader>hQ", function()
				gitsigns.setqflist("all")
			end, { desc = "git hunk [Q]uickfix list (all files in repo)" })
			map("n", "<leader>hq", gitsigns.setqflist, { desc = "git hunk [q]uickfix list (all changes in this file)" })
			-----------------
			-- REVIEW AS YOU CODE
			map("n", "<leader>hi", gitsigns.preview_hunk_inline, { desc = "git preview hunk [i]nline" })
			map("n", "<leader>hp", gitsigns.preview_hunk, { desc = "git [p]review hunk" })

			-- USBA
			map("n", "<leader>hR", gitsigns.reset_buffer, { desc = "git [R]eset buffer" })
			map("v", "<leader>hr", function()
				gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "git [r]eset visually selected hunk" })
			map("n", "<leader>hr", gitsigns.reset_hunk, { desc = "git [r]eset whole hunk" })

			-- PANANGIL
			map("n", "<leader>tb", gitsigns.toggle_current_line_blame, { desc = "[T]oggle git show [b]lame line" })
			-- Navigation
			--
			map("n", "]c", function()
				if vim.wo.diff then
					vim.cmd.normal({ "]c", bang = true })
				else
					gitsigns.nav_hunk("next")
				end
			end, { desc = "Jump to next git [c]hange" })

			map("n", "[c", function()
				if vim.wo.diff then
					vim.cmd.normal({ "[c", bang = true })
				else
					gitsigns.nav_hunk("prev")
				end
			end, { desc = "Jump to previous git [c]hange" })

			-- Actions
			-- visual mode
			map("v", "<leader>hs", function()
				gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "git [s]tage hunk" })
			-- normal mode
			-- // WAK O KASABOT ANI NILA
			map("n", "<leader>hs", gitsigns.stage_hunk, { desc = "git [s]tage hunk" })
			map("n", "<leader>hS", gitsigns.stage_buffer, { desc = "git [S]tage buffer" })
			-- Toggles
			map("n", "<leader>tw", gitsigns.toggle_word_diff, { desc = "[T]oggle git intra-line [w]ord diff" })
			-- Text object
			map({ "o", "x" }, "ih", gitsigns.select_hunk)
		end,
	},
}
