-- This file is for color-related plugins
return {
  -- modern Oklch color picker + highlighter
  {
    "eero-lehtinen/oklch-color-picker.nvim",
    event = "VeryLazy",
    version = "*",
    keys = {
      {
        "<A-c>", -- Alt + c opens the picker
        function()
          require("oklch-color-picker").pick_under_cursor()
        end,
        desc = "OKLCH Color Picker (under cursor)",
      },
    },
    opts = {
      patterns = {
        css_oklch = { priority = -1, "()oklch%([^,]-%)()" },
      }, 
        -- you can customize patterns & highlight options here if needed
    },
  },

  -- inline color highlighter (fast color previews)
  {
    "norcalli/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("colorizer").setup({
        "*", -- enable for all filetypes
        css = { css = true },
      })
    end,
  },
}

