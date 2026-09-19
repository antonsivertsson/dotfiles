return {
  { "folke/noice.nvim", opts = {
    cmdline = {
      view = "cmdline",
    },
  } },
  -- Disable markdown lint
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft.markdown = nil
    end,
  },
}
