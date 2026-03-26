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
          position = "right", -- open on right side
          width = 32,

          mappings = {
            -- Movement (WASD style)
            ["w"] = "prev",        -- move up
            ["s"] = "next",        -- move down
            ["a"] = "close_node",  -- close folder
            ["d"] = "open",        -- open folder / file
            ["o"] = "open",        -- open file

            -- Create
            ["n"] = "add",         -- create file or folder

            -- Optional but nice to keep
            ["r"] = "rename",
            ["x"] = "delete",
            ["q"] = "close_window",

            -- Disable defaults you don't want
            ["<space>"] = "none",
          },
        },

        filesystem = {
          follow_current_file = {
            enabled = true,
          },
          hijack_netrw_behavior = "open_default",
          use_libuv_file_watcher = true,
        },
      })

      -- Ctrl + B toggle like VSCode
      vim.keymap.set("n", "<C-b>", ":Neotree toggle<CR>", { silent = true })
    end,
  },
}
