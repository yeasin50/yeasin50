

vim.g.mapleader = " "   
vim.g.maplocalleader = " "

vim.o.number = true
vim.o.relativenumber=true
vim.o.mouse= 'a'



vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end, { desc = "Format code with LSP" })

require("config.lazy")

vim.opt.clipboard = "unnamedplus"

vim.opt.wrap = true

