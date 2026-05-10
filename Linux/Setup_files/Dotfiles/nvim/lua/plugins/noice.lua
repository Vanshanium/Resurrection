-- This is for the Command line 
-- Work more on this config
return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",

    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },

    config = function()

      -- Smaller notify windows
      require("notify").setup({
        stages = "fade",
        timeout = 2500,

        max_width = 50,
        max_height = 10,

        render = "compact",
      })

      require("noice").setup({

        -- =====================================
        -- Command Line
        -- =====================================

        cmdline = {
          enabled = true,

          -- Smaller command bar
          view = "cmdline_popup" -- "cmdline",
        },

        -- =====================================
        -- Messages
        -- =====================================

        messages = {
          enabled = true,
          view = "mini",
          view_error = "mini",
          view_warn = "mini",
          view_history = "messages",
        },

        -- =====================================
        -- Popup Menu
        -- =====================================

        popupmenu = {
          enabled = true,

          -- compact popup
          backend = "nui",
        },

        -- =====================================
        -- Notifications
        -- =====================================

        notify = {
          enabled = true,
          view = "mini",
        },

        -- =====================================
        -- LSP
        -- =====================================

        lsp = {
          progress = {
            enabled = false, -- HUGE size reduction
          },

          hover = {
            enabled = true,

            opts = {
              border = "rounded",
              size = {
                max_width = 60,
                max_height = 20,
              },
            },
          },

          signature = {
            enabled = true,

            opts = {
              border = "rounded",
              size = {
                max_width = 50,
                max_height = 10,
              },
            },
          },
        },

        -- =====================================
        -- Presets
        -- =====================================

        presets = {

          -- smaller search UI
          bottom_search = true,

          -- DISABLE huge palette
          command_palette = false,

          long_message_to_split = true,

          inc_rename = false,

          lsp_doc_border = true,
        },
      })

      -- cleaner UI
      vim.opt.cmdheight = 0
    end,
  },
}
