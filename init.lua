-- bootstrap lazy.nvim, LazyVim and your plugins

if vim.g.neovide then
  vim.o.guifont = "Source Code Pro:h12"
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_scale_factor = 1.0
  --	vim.g.neovide_transparency = 0.9
end

-- vim.g.wildmenu = true
-- vim.g.wildoptions = "pum"
-- vim.g.pumheight = 10

require("config.lazy")
