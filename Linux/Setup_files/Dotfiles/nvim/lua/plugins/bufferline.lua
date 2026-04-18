return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",

  config = function()

    vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { silent = true })
    vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { silent = true })
    vim.keymap.set("n", "<Space>w", "<cmd>bdelete<CR>", { silent = true })

    -- 🎨 Get colors from Catppuccin
    local colors = require("catppuccin.palettes").get_palette("macchiato")

    require("bufferline").setup({
      options = {
        mode = "buffers",
        separator_style = "thin",  -- "Thick","Slope","Slant"
        show_buffer_close_icons = false,
        show_close_icon = false,
      },

      highlights = {
        buffer_selected = {
          fg = colors.blue,
          bg = "NONE",
          bold = true,
        },
        buffer_visible = {
          fg = colors.subtext1,
          bg = colors.mantle,
        },
        buffer = {
          fg = colors.overlay1,
          bg = "NONE",
        },
        fill = {
          bg = "NONE",
        },
      },
    })
  end,
}
