-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 编码自动检测,避免打开是乱码
vim.o.encoding = "utf-8"
vim.o.fileencodings = "utf-8,ucs-bom,gbk,gb2312,big5,latin1"
vim.o.fileformats = "unix,dos,mac"

if vim.g.neovide then
  -- vim.opt.guifont = "Source Code Pro:h13"
  vim.opt.guifont = "Hack Nerd Font Mono:h13"
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_input_ime = true
  vim.g.neovide_cursor_animation_length = 0.13
  vim.g.neovide_cursor_trail_size = 0.5
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_scroll_animation_far_lines = 3
  vim.g.terminal_color_4 = "#268bd2"
  vim.opt.linespace = -2
  vim.g.neovide_window_blurred = false
  vim.g.neovide_floating_shadow = false
  vim.g.neovide_floating_corner_radius = 10.0
  vim.g.neovide_transparency = 1
  vim.g.neovide_normal_opacity = 1
  vim.g.neovide_underline_stroke_scale = 1.3
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_fullscreen = false
  vim.g.neovide_no_idle = false

  vim.g.neovide_cursor_vfx_modes = "pixiedust"
  vim.g.neovide_cursor_vfx_opacity = 200
  vim.g.neovide_cursor_vfx_particle_lifetime = 1
  vim.g.neovide_cursor_vfx_particle_density = 1
  vim.g.neovide_cursor_vfx_particle_phase = 1.5
  vim.g.neovide_cursor_vfx_particle_curl = 0.2

  vim.g.neovide_profiler = false
end
