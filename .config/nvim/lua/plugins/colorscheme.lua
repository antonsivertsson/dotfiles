-- local function set_normal_float_highlight()
--   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
--   vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
--   vim.api.nvim_set_hl(0, "FloatTitle", { bg = "NONE" })
-- end

-- vim.api.nvim_create_autocmd("ColorScheme", {
--   pattern = "*",
--   callback = set_normal_float_highlight,
-- })

return {
  {
    "neanias/everforest-nvim",
    config = function()
      -- require("everforest").setup({
      --   transparent_background_level = 2,
      -- })
    end,
  },
  {
    "Shatur/neovim-ayu",
    config = function()
      require("ayu").setup({
        overrides = {
          WinSeparator = { link = "Title" },
        },
      })
    end,
    -- opts = {
    --   overrides = {
    --     WinSeparator = { fg = "#aaaaaa", bg = "#F5D098" },
    --   },
    -- },
  },
  {
    "everviolet/nvim",
    name = "evergarden",
    priority = 1000,
    opts = {
      overrides = {
        Search = { fg = "#171C1F", bg = "#F5D098" },
        IncSearch = { fg = "#171C1F", bg = "#7fbbb3" },
        Substitute = { fg = "#171C1F", bg = "#F57F82" },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-moon",
    },
  },
}
