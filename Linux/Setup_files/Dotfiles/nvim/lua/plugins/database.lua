-- This plugin is for Database Management 
-- This is combination of the following Plugins 
-- This is the Video : https://www.youtube.com/watch?v=NhTPVXP8n7w
return {
  {
    "tpope/vim-dadbod",
    lazy = true,
    cmd = {
      "DB",
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
  },

  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      "tpope/vim-dadbod",
      "kristijanhusak/vim-dadbod-completion",
    },

    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },

    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },

  {
    "kristijanhusak/vim-dadbod-completion",
    ft = { "sql", "mysql", "plsql" },

    dependencies = {
      "hrsh7th/nvim-cmp",
      "tpope/vim-dadbod",
    },
  },
}
