require("craftyprash.config.options")
require("craftyprash.config.lazy")

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    require("craftyprash.config.autocmds")
    require("craftyprash.config.keymaps")
  end,
})

-- set colorscheme mapped to global theme
vim.cmd("colorscheme " .. vim.g.theme)
