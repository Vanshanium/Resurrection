return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({

        flavour = "macchiato",
        transparent_background = true,

        color_overrides = {
          macchiato = {
            base = "#000000",      -- main background
            mantle = "#2c2f36",    -- slightly, This is from my kitty theme
            crust = "#1e1ee9",     -- darkest

            text = "#ecfbf9",
            subtext0 = "#aaafcc",
            subtext1 = "#878db2",

            surface0 = "#545a64", -- This is for the Treesitter selection highlight
            surface1 = "#545a64", -- This is for the CursorLine highlight

            overlay0 = "#7f849c",
            overlay1 = "#7f849c",
            overlay2 = "#9399b2",

            blue = "#a5c8ff",
            lavender = "#b4befe",
            teal = "#94e2d5",

            green = "#93deab",
            yellow = "#fcdb94",
            peach = "#ffbd94",
            red = "#f38ba8",

            mauve = "#a58ae0",
            pink = "#f5c2e7",
          },
        },

        --------------------------------------------------
        -- 🧩 2. CUSTOM HIGHLIGHTS (REAL POWER)
        --------------------------------------------------
        custom_highlights = function(colors)
          return {
            -- 🌌 Editor UI
            Normal = { bg = "NONE" },
            CursorLine = { bg = colors.surface0 },
            LineNr = { fg = colors.overlay1 },
            CursorLineNr = { fg = colors.mauve, style = { "bold" } },

            -- 💬 Code styling
            Comment = { fg = colors.overlay1, style = { "italic" } },
            Keyword = { fg = colors.red, style = { "bold" } },
            String = { fg = colors.green, style = { "italic" } },
            Function = { fg = colors.blue },
            Identifier = { fg = colors.lavender },


            -- Progarming languages (Treesitter)
            ["@keyword"] = { fg = colors.red, style = { "bold" } },
            ["@keyword.import"] = { fg = colors.red, style = { "bold" } },
            ["@punctuation.delimiter"] = { fg = colors.lavender }, -- , ; .
            ["@punctuation.bracket"]   = { fg = colors.yellow },    -- () [] {}
            ["@punctuation.special"]   = { fg = colors.peach },      -- special chars

            -- 🔥 Diagnostics (LSP)
            DiagnosticError = { fg = colors.red },
            DiagnosticWarn = { fg = colors.yellow },
            DiagnosticInfo = { fg = colors.blue },
            DiagnosticHint = { fg = colors.teal },

            -- 🪟 Floating windows
            NormalFloat = { bg = colors.mantle },
            FloatBorder = { fg = colors.red, bg = colors.mantle },
            Pmenu = { bg = colors.mantle },
            PmenuSel = { bg = colors.surface0 },

            -- 🔍 Visual selection
            Visual = { bg = colors.surface1 },

            -- 🌲 NvimTree / file explorer
            NvimTreeFolderName = { fg = colors.lavender },
            NvimTreeRootFolder = { fg = colors.mauve, style = { "bold" } },
          }
        end,

        --------------------------------------------------
        -- 🧠 3. STYLE SETTINGS (you already had these)
        --------------------------------------------------
        styles = {
          comments = { "italic" },
          conditionals = { "bold" },
          loops = { "bold" },
          strings = { "italic" },
        },

        --------------------------------------------------
        -- 🔌 Integrations
        --------------------------------------------------
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          mini = true,
        },
      })

      vim.cmd.colorscheme("catppuccin-macchiato")
    end,
  }
}

