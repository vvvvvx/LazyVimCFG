return {
  {
    "TD-Sky/fcitx.nvim",
    event = "VeryLazy",
    -- ft = { "markdown" },
    keys = {
      {
        "<leader>ux",
        "<cmd>FcitxToggleSwitch<CR>",
        desc = "切换‘输入法自动切换’开关",
      },
    },
    config = function()
      require("fcitx").enable_switch()
      --local fcitx = require("fcitx")
      --fcitx.setup()
      --fcitx.enable_switch()
    end,
  },
}
