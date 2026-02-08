-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- vim.cmd([[ highlight Normal guibg=none ctermbg=none ]])
-- vim.cmd([[ highlight NonText guibg=none ctermbg=none ]])
-- vim.cmd([[ highlight NormalFloat guibg=none ctermbg=none ]])
-- vim.cmd([[ highlight NvimTreeNormal guibg=none ctermbg=none ]])

vim.opt.exrc = true
vim.opt.secure = true

require("config.godot")
