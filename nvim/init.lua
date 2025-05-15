

vim.g.mapleader = " "
vim.g.maplocalleader = " "


vim.o.number = true
vim.o.relativenumber=true
vim.o.mouse= 'a'


vim.opt.clipboard = "unnamedplus"

vim.opt.wrap = true

vim.opt.spell = true 
vim.opt.spelllang = {"en_us"}


vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text" },
  callback = function()
    vim.opt_local.spell = true
  end,
})

-- Auto-close parentheses
vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true, silent = true })

-- Auto-close square brackets
vim.api.nvim_set_keymap('i', '[', '[]<Left>', { noremap = true, silent = true })

-- Auto-close curly braces
vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true, silent = true })

require("config.lazy")
