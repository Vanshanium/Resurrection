-- Fold management using the "ufo" plugin by kevinhwang91.
return {
  "kevinhwang91/nvim-ufo",
  dependencies = { "kevinhwang91/promise-async" },

  config = function()
    -- =========================
    -- Fold options (required)
    -- =========================
    vim.o.foldcolumn = "0"
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    -- Fold icons
    vim.opt.fillchars = {
      fold = " ",
      foldopen = "▾",
      foldclose = "▸",
      foldsep = " ",
    }

    -- =========================
    -- UFO setup
    -- =========================
    require("ufo").setup({
      provider_selector = function(bufnr, filetype, buftype)
        return { "treesitter", "indent" }
      end,

      preview = {
        win_config = {
          border = "rounded",
          winhighlight = "Normal:Normal",
        },
      },
    })

    -- =========================
    -- Keymaps (WASD-style)
    -- =========================
    vim.keymap.set("n", "kk", function()
      require("ufo").toggleFolded()
    end, { desc = "Toggle fold" })

    vim.keymap.set("n", "hh", "zc", { desc = "Fold" })
    vim.keymap.set("n", "jj", "zo", { desc = "Unfold" })

    vim.keymap.set("n", "hH", function()
      require("ufo").closeAllFolds()
    end, { desc = "Fold all" })

    vim.keymap.set("n", "jJ", function()
      require("ufo").openAllFolds()
    end, { desc = "Unfold all" })

    vim.keymap.set("n", "zp", function()
      require("ufo").peekFoldedLinesUnderCursor()
    end, { desc = "Preview fold" })
  end,
}
