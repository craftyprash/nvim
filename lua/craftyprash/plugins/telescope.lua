return {
  {
    "nvim-telescope/telescope.nvim",
    version = false, -- disable and use HEAD as Telescope has release of just July'22
    branch = "0.1.x", -- specify branch to use instead of HEAD (version false is required)
    cmd = { "Telescope" },

    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
      {
        "<leader>ff",
        function()
          require("telescope.builtin").find_files({hidden=true})
        end,
        desc = "Find File",
      },
      {
        "<leader>/",
        function()
          -- You can pass additional configuration to telescope to change theme, layout, etc.
          require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
            winblend = 10,
            previewer = false,
          }))
        end,
        { desc = "[/] Fuzzily search in current buffer]" },
      },
      { "<leader>,", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
      { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "status" },
      { "<leader>hk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
      { "<leader>ho", "<cmd>Telescope vim_options<cr>", desc = "Options" },
    },
    config = function()
      local telescope = require("telescope")
      local actions = require 'telescope.actions'
      telescope.setup({
        defaults = {
          file_ignore_patterns = { "node_modules", ".git" },
          mappings = {
            i = {
              ['<C-j>'] = actions.move_selection_next,
              ['<C-k>'] = actions.move_selection_previous,
              ['<Esc>'] = actions.close, -- use Esc even in insert mode to exit
            },
          },
          prompt_prefix = " ",
          selection_caret = " ",
          layout_strategy = "horizontal",
          layout_config = {
            prompt_position = "top",
          },
          sorting_strategy = "ascending",
        },
       winblend = 10,
      })
      telescope.load_extension("fzf")
    end,
  },
}
