-- Neo-tree (VSCode-style file explorer with WASD navigation)

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
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,

        window = {
          position = "right",
          width = 32,

          mappings = {

            -- =========================
            -- WASD Navigation
            -- =========================

            ["w"] = function()
              vim.cmd("normal! k")
            end,

            ["s"] = function()
              vim.cmd("normal! j")
            end,

            ["a"] = "close_node",
            ["d"] = "open",

            -- Optional Enter
            ["<cr>"] = "open",

            -- =========================
            -- File Operations
            -- =========================

            ["n"] = "add",
            ["r"] = "rename",
            ["x"] = "delete",
            ["y"] = "copy_to_clipboard",
            ["p"] = "paste_from_clipboard",
            ["m"] = "move",

            -- =========================
            -- Refresh / Close
            -- =========================

            ["R"] = "refresh",
            ["q"] = "close_window",

            -- =========================
            -- Disable Defaults
            -- =========================

            ["<space>"] = "none",
          },
        },

        filesystem = {

          follow_current_file = {
            enabled = true,
          },

          hijack_netrw_behavior = "open_default",

          use_libuv_file_watcher = true,

          filtered_items = {
            visible = false,
            hide_dotfiles = false,
            hide_gitignored = false,
          },
        },
      })

      -- =========================
      -- Toggle Neo-tree
      -- =========================

      vim.keymap.set("n", "<C-b>", function()
        require("neo-tree.command").execute({
          toggle = true,
          dir = vim.loop.cwd(),
        })
      end, {
        silent = true,
        desc = "Toggle Neo-tree",
      })
    end,
  },
}
