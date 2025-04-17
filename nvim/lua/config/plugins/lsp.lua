return{
  {
    "neovim/nvim-lspconfig",
    config = function()
	require("lsp.servers.gopls")
    end,
  }
	
}
