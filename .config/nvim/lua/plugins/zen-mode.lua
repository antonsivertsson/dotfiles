return {
  "folke/zen-mode.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>uz",
      function()
        vim.cmd("ZenMode")
      end,
      desc = "Zen mode",
    },
  },
}
