-- This is Plugin of Nvim Telescope for fuzzy finding and more -- 

return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require("telescope")

      telescope.setup({
        defaults = {
          layout_strategy = "horizontal",
          sorting_strategy = "ascending",
        },
      })

      local builtin = require("telescope.builtin")

      -- VSCode-like keymaps
      vim.keymap.set("n", "<C-p>", builtin.find_files, {}) -- Ctrl+P = search files
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})

      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}) -- search text
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {}) -- open buffers
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {}) -- help pages

      -- VSCode-like Command Palette
      vim.keymap.set("n", "<C-S-p>", builtin.commands, {})
      vim.keymap.set("n", "<leader>fc", builtin.commands, {})
    end,
  },
}

