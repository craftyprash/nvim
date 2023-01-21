return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "BufReadPost",
      config = function()
        require("nvim-treesitter.configs").setup({
          sync_install = false,
          ensure_installed = {
          "bash",
          "help",
          "html",
          "javascript",
          "json",
          "lua",
          "markdown",
          "markdown_inline",
          "python",
          "query",
          "regex",
          "tsx",
          "typescript",
          "vim",
          "yaml",
        },
        highlight = { enable = true },
        indent = { enable = true },
        context_commentstring = {
          enable = true, -- enable nvim-ts-context-commentstring module
          enable_autocmd = false, -- disable default CursorHold autocommand
        },
      })
    end,
  },
}
