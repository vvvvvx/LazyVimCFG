return {
	{
		"phaazon/hop.nvim",
		keys = function()
			local ok, hop = pcall(require, "hop")
			if not ok then
				return {}
			end
			local directions = require("hop.hint").HintDirection
			local mode = { "n", "x" }
			return {
				{ "gh", "<cmd>HopChar1<cr>", desc = "全屏跃迁" },
				{ "gl", "<cmd>HopLine<cr>", mode = mode, desc = "跳转到行" },
				{ "gp", "<cmd>HopPattern<cr>", mode = mode, desc = "跳转到字符串" },
				{ "gf", "<cmd>HopChar1AC<cr>", mode = mode, desc = "后向跃迁" },
				{ "gF", "<cmd>HopChar1BC<cr>", mode = mode, desc = "前向跃迁" },
				{
					"t",
					function()
						hop.hint_char1({ direction = directions.AFTER_CURSOR, hint_offset = -1 })
					end,
					mode = mode,
					desc = "后向跳跃",
				},
				{
					"T",
					function()
						hop.hint_char1({ direction = directions.BEFORE_CURSOR, hint_offset = 1 })
					end,
					mode = mode,
					desc = "前向跳跃",
				},
			}
		end,
		config = true,
	},
	{
		"johmsalas/text-case.nvim",
		config = function()
			local textcase = require("textcase")
			local wk = require("which-key")

			local function convert_current_word(dest_case)
				return function()
					textcase.current_word(dest_case)
				end
			end
			wk.add({
				{
					mode = { "n", "x", "o" },
					{ "gt", group = "text-case" },
					{ "gt/", convert_current_word("to_path_case"), desc = "to/path" },
					{ "gt_", convert_current_word("to_dash_case"), desc = "to-dash" },
					{ "gtd", convert_current_word("to_dot_case"), desc = "to.dot" },
					{ "gtu", convert_current_word("to_upper_case"), desc = "TO UPPER" },
					{ "gtl", convert_current_word("to_lower_case"), desc = "to lower" },
					{ "gts", convert_current_word("to_snake_case"), desc = "to_snake" },
					{ "gtC", convert_current_word("to_constant_case"), desc = "TO_CONSTANT" },
					{ "gtp", convert_current_word("to_phrase_case"), desc = "To phrase" },
					{ "gtc", convert_current_word("to_camel_case"), desc = "toCamel" },
					{ "gtP", convert_current_word("to_pascal_case"), desc = "ToPascal" },
					{ "gtt", convert_current_word("to_title_case"), desc = "To Title" },
				},
			})
		end,
	},
}
