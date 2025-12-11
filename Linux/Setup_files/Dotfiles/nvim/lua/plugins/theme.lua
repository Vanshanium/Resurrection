return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- "latte", "frappe", "macchiato", "mocha"
        transparent_background = true, 
        float = {
        transparent = true, -- enable transparent floating windows
        solid = false, -- use solid styling for floating windows, see |winborder|
        },
        term_colors = false,
        
        -- Dont Give a fuck what this does--
        dim_inactive = {
          enabled = false, -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
         },
        
        -- Apply Styles to Different Programming Segments--
        styles = { 
          comments = { "italic" }, 
          conditionals = { "bold" },
          loops = {"bold"},
          functions = {},
          keywords = {},
          strings = {"italic"},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
          -- miscs = {}, -- Uncomment to turn off hard-coded styles
        }, 

        -- Find What this does and Write something here.
        lsp_styles = { 
              virtual_text = {
                errors = { "italic" },
                hints = { "italic" },
                warnings = { "italic" },
                information = { "italic" },
                ok = { "italic" },
            },
            underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" },
                ok = { "underline" },
            },
            inlay_hints = {
                background = true,
            },
        },
        color_overrides = {},
        custom_highlights = {},
        default_integrations = true,
        auto_integrations = false,
        integrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            notify = false,
            mini = {
                enabled = true,
                indentscope_color = "",
            },
            -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        }, 

      })

      vim.cmd.colorscheme("catppuccin-macchiato")
    end,
  }
}

