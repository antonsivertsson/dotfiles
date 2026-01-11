-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Molten
vim.keymap.set("n", "<leader>mi", ":MoltenInit<CR>", { silent = true, desc = "Initialize the plugin" })
-- vim.keymap.set("n", "<leader>e", ":MoltenEvaluateOperator<CR>", { silent = true, desc = "run operator selection" })
vim.keymap.set("n", "<leader>rl", ":MoltenEvaluateLine<CR>", { silent = true, desc = "evaluate line" })
vim.keymap.set("n", "<leader>rr", ":MoltenReevaluateCell<CR>", { silent = true, desc = "re-evaluate cell" })
vim.keymap.set(
  "v",
  "<leader>r",
  ":<C-u>MoltenEvaluateVisual<CR>gv",
  { silent = true, desc = "evaluate visual selection" }
)
vim.keymap.set("i", "<M-BS>", "<C-w>")
vim.keymap.set("i", "<CMD-BS>", "<C-u>")

-- Disable autocomplete in buffer
vim.keymap.set("n", "<leader>ue", function()
  local disabled = vim.b.cmp_disabled or false
  vim.b.cmp_disabled = not disabled

  require("cmp").setup.buffer({
    enabled = not vim.b.cmp_disabled,
  })

  if vim.b.cmp_disabled then
    vim.notify("Autocomplete disabled in this buffer", vim.log.levels.INFO)
  else
    vim.notify("Autocomplete enabled in this buffer", vim.log.levels.INFO)
  end
end, { desc = "Toggle cmp autocomplete in current buffer" })
