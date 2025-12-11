-- This is Plugin of Nvim Comment.nvim for easy commenting of code --

return {
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
      -- Toggle comment with Ctrl+/
      vim.keymap.set("n", "<C-_>", "gcc", { remap = true })  -- normal mode
      vim.keymap.set("v", "<C-_>", "gc", { remap = true })   -- visual mode
    end,
  },
}


