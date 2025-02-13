return {
	{
		"iamcco/markdown-preview.nvim",
		build = "cd app && npm install",
		ft = "markdown",
		--keys = { { [[\]], "<cmd>MarkdownPreviewToggle<CR>", desc = "预览" } },
		keys = { { [[|]], ":MarkdownPreview<CR>", desc = "预览" } },
		config = function()
			vim.g.mkdp_auto_start = 1
			vim.g.mkdp_markdown_css = "/home/user/.config/Typora/themes/seniva-diy.css"
			--vim.g.mkdp_markdown_css = "/home/user/.config/Typora/themes/cobalt-old.css"
		end,
	},
	--Markdown Toc Generator
	--CMD : GenToc*
	{
		"mzlogin/vim-markdown-toc",
		ft = "markdown",
		keys = {
			{ "toc", "<cmd>GenTocGFM<cr>", desc = "生成MD TOC" },
			{ "<leader>toc", "<cmd>GenTocGFM<cr>", desc = "生成MD TOC" },
		},
	},
}
