
local lspconfig = require('lspconfig')

lspconfig.gopls.setup({
  cmd = { "gopls" },
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
})
