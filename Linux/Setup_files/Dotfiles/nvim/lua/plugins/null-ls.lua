return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    -- create augroup ONCE
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    -- call setup ONCE
    null_ls.setup({
      sources = {
        -- C / C++
        null_ls.builtins.formatting.clang_format,

        -- Python
        null_ls.builtins.formatting.black,

        -- Web
        null_ls.builtins.formatting.prettier,
      },

      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({
            group = augroup,
            buffer = bufnr,
          })

          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ bufnr = bufnr })
            end,
          })
        end
      end,
    })
  end,
}
