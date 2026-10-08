return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      diagnostics = {
        virtual_text = false,
      },
      servers = {
        sourcekit = {
          cmd = { "sourcekit-lsp" },
        },
      },
    },
    keys = {
      {
        "<leader>uW",
        function()
          vim.diagnostic.config({ virtual_text = not vim.diagnostic.config().virtual_text })
        end,
        desc = "Toggle diagnostics text",
      },
    },
  },
}
