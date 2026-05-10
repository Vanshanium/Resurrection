-- Telescope (File Search Only)

return {
  {
    "nvim-telescope/telescope.nvim",

    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    config = function()

      local telescope = require("telescope")

      telescope.setup({
        defaults = {
          layout_strategy = "horizontal",
          sorting_strategy = "ascending",
        },
      })

      local builtin = require("telescope.builtin")

      -- Ctrl + P → File Search
      vim.keymap.set("n", "<C-p>", builtin.find_files, {
        silent = true,
        desc = "Find Files",
      })
    end,
  },
}
