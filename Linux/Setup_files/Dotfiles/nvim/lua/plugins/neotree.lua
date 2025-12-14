-- This is Plugin of Nvim Neo-tree for file explorer like VSCode --
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        window = {
          position = "right",   -- open on right side
          width = 32,
        },
        filesystem = {
          follow_current_file = {
            enabled = true,
          },
          hijack_netrw_behavior = "open_default",
          -- filtered_items = {
          --   visible = false,        -- This Enables the Hidden View.
          --   hide_dotfiles = false,
          --   hide_gitignored = false,
          -- }, 
        },
      })

      -- Ctrl + B toggle like VSCode
      vim.keymap.set("n", "<C-b>", ":Neotree toggle<CR>", { silent = true })
    end,
  },
}

