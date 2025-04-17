
return {
  {
    "folke/tokyonight.nvim",
    enabled = false,  
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",     },
  },

  {
    "joshdick/onedark.vim",      
       config = function()

      vim.cmd("colorscheme onedark")

      vim.g.onedark_style = "dark"  -- Choose the style: "dark", "light", "warmer", "cooler"
      vim.g.onedark_terminal_italics = 1  -- Enable italics in terminal
    end,
  },
}
