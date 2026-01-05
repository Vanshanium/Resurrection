--This is Pluggin of Nvim Treesitter for better syntax highlighting and code understanding--

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "python", "c", "cpp", "javascript", "typescript", "html", "css","r" },
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
      })
    end,
  },
}

