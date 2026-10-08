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
      require("everforest").setup({
        --- transparent_background_level = 2,
        on_highlights = function(hl, palette)
          hl.WinSeparator = { fg = palette.orange }
          hl.DiagnosticUnderlineWarn = { undercurl = true, sp = palette.orange }
          hl.DiagnosticUnderlineError = { undercurl = true, sp = palette.red }
          hl.DiagnosticUnderlineHint = { undercurl = true, sp = palette.purple }
          hl.DiagnosticHint = { fg = palette.blue }
        end,
        colours_override = function(palette)
          palette.fg = "#CCCAC2"
          palette.bg0 = "#171C1F"
          palette.red = "#FF6666"
          palette.orange = "#FFA759"
          palette.yellow = "#FFD173"
          palette.green = "#D5FF80"
          palette.aqua = "#95E6CB"
          palette.blue = "#5CCFE6"
          palette.purple = "#DFBFFF"
          palette.grey0 = "#7a8478"
          palette.grey1 = "#859289"
          palette.grey2 = "#9da9a0"
          palette.statusline1 = "#a7c080"
          palette.statusline2 = "#d3c6aa"
          palette.statusline3 = "#F28779"
          palette.bg2 = "#1F2430"
        end,
      })
    end,
  },
  {
    "Shatur/neovim-ayu",
    config = function()
      require("ayu").setup({
        overrides = {
          WinSeparator = { link = "Title" },
          Normal = { bg = "None" },
          NormalFloat = { bg = "None" },
          ColorColumn = { bg = "None" },
          SignColumn = { bg = "None" },
          Folded = { bg = "None" },
          FoldColumn = { bg = "None" },
          CursorLine = { bg = "None" },
          CursorColumn = { bg = "None" },
          VertSplit = { bg = "None" },
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
      colorscheme = "everforest",
    },
  },
}
