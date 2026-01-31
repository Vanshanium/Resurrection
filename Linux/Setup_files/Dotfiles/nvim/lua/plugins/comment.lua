-- This is Plugin of Nvim Comment.nvim for easy commenting of code --

return {
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()

      -- Normal mode
      vim.keymap.set(
        "n",
        "<C-_>",
        "<Plug>(comment_toggle_linewise_current)",
        { silent = true }
      )

      -- Visual mode
      vim.keymap.set(
        "v",
        "<C-_>",
        "<Plug>(comment_toggle_linewise_visual)",
        { silent = true }
      )

      -- Insert mode
      vim.keymap.set(
        "i",
        "<C-_>",
        "<Esc><Plug>(comment_toggle_linewise_current)A",
        { silent = true }
      )
    end,
  },
}

