-- bootstrap lazy.nvim, LazyVim and your plugins

vim.o.guifont = "Source Code Pro:h12"
if vim.g.neovide then
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_scale_factor = 1.0
  --	vim.g.neovide_transparency = 0.9
end

require("config.lazy")
