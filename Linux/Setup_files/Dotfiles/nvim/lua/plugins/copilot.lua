return {
  {
    "github/copilot.vim",
    lazy = false, -- load immediately
  },

  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      "github/copilot.vim",
      "nvim-lua/plenary.nvim",
    },
    cmd = {
      "CopilotChat",
      "CopilotChatToggle",
    },
    config = function()
      vim.keymap.set("n", "<C-i>", ":CopilotChatToggle<CR>", { silent = true })
      vim.keymap.set("v", "<C-i>", ":CopilotChat<CR>", { silent = true })
    end,
  },
}
