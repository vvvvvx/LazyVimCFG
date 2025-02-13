return {
  {
    "hrsh7th/nvim-cmp",
    enabled = true,
    dependencies = {
      "hrsh7th/cmp-cmdline", -- 添加命令行补全插件
      "hrsh7th/cmp-path", -- 添加路径补全插件
      "hrsh7th/cmp-buffer", -- 添加buffer补全插件
      "hrsh7th/cmp-nvim-lsp",
    },
    opts = function(_, opts)
      local cmp = require("cmp")

      -- 先保留 LazyVim 默认的配置
      opts.mapping = opts.mapping or {}

      -- 配置 `:` 命令行补全
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" }, -- 路径补全
          { name = "cmdline" }, -- 命令行补全
        }),
      })

      -- 配置 `/` 和 `?` 搜索补全
      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" }, -- 从当前缓冲区补全
        },
      })
    end,
  },
}
