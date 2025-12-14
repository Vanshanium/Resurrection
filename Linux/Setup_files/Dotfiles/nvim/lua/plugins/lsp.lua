-- This Plugin is for LSP (Language Server Protocol) Configuration --
return {
  -- Mason (installer)
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason ↔ LSP bridge
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright",
          "lua_ls",
          "clangd",
        },
      })
    end,
  },

  -- LSP configuration (NEW API)
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Common on_attach
      local on_attach = function(_, bufnr)
        local opts = { buffer = bufnr, silent = true }

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- Go to defination of Function or Variables
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts) -- Refrences of any variable of a function 
        vim.keymap.set("n", "<C-q>", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<C-r>", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<C-f>", vim.lsp.buf.code_action, opts)
      end

      -- Python
      vim.lsp.config.pyright = {
        on_attach = on_attach,
      }

      -- Lua (Neovim)
      vim.lsp.config.lua_ls = {
        on_attach = on_attach,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      }

      -- C / C++
      vim.lsp.config.clangd = {
        on_attach = on_attach,
      }
    end,
  },
}

