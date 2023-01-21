return {
  { "shaunsingh/oxocarbon.nvim", lazy = vim.g.theme ~= "oxocarbon", enabled = vim.g.theme == "oxocarbon" },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = vim.g.theme ~= "gruvbox",
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
        transparent_mode = true,
      })
    end,
    enabled = vim.g.theme == "gruvbox",
  },
  {
    "folke/tokyonight.nvim",
    lazy = vim.g.theme ~= "tokyonight",
    config = function()
      local tokyonight = require("tokyonight")
      tokyonight.setup({ style = "moon" })
      tokyonight.load()
    end,
    enabled = vim.g.theme == "tokyonight",
  },
  {
    "navarasu/onedark.nvim",
    lazy = vim.g.theme ~= "onedark",
    config = function()
      local onedark = require("onedark")
      onedark.setup({ style = "darker" })
      onedark.load()
    end,
    enabled = vim.g.theme == "onedark",
  }
}
