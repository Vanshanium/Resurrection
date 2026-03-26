return {
  {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = 'enter' },

    appearance = {
      nerd_font_variant = 'mono',
    },

    window = {
      completion = {
        border = 'rounded',
      },
      documentation = {
        border = 'rounded',
      },
    },

    completion = {
      list = {
        max_items = 2,
      },
      documentation = {
        auto_show = false,
      },
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    fuzzy = {
      implementation = "prefer_rust_with_warning",
    },
  },

  opts_extend = { "sources.default" },
}
}
