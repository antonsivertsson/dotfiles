local function set_normal_float_highlight()
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "FloatTitle", { bg = "NONE" })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_normal_float_highlight,
})

return {
  {
    "neanias/everforest-nvim",
    config = function()
      require("everforest").setup({
        transparent_background_level = 2,
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
