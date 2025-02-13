-- bootstrap lazy.nvim, LazyVim and your plugins

vim.o.guifont = "Source Code Pro:h12"
if vim.g.neovide then
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_scale_factor = 1.0
  --	vim.g.neovide_transparency = 0.9
end
-- 编码自动检测,避免打开是乱码
vim.o.encoding = "utf-8"
vim.o.fileencodings = "utf-8,ucs-bom,gbk,gb2312,big5,latin1"
vim.o.fileformats = "unix,dos,mac"

require("config.lazy")
