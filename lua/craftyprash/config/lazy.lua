-------------------- PLUGIN MANAGER ------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath })
  vim.fn.system({ "git", "-C", lazypath, "checkout", "tags/stable" }) -- last stable release
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-------------------- PLUGINS ------------------------------
require("lazy").setup({
  spec = "craftyprash.plugins",
  defaults = {
    lazy = true, -- every plugin is lazy-loaded by default
    version = "*", -- enable this to try installing the latest stable versions of plugins
  },
  install = { colorscheme = { "oxocarbon", "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
vim.keymap.set("n", "<leader>l", "<cmd>:Lazy<cr>")
