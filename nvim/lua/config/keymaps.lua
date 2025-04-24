vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "open parent directory in Oil" })

vim.keymap.set("n", "<leader>f", function()
    require('conform').format({
        lsp_format = "fallback",
    }
    )
end, { desc = "Format code with LSP" })
