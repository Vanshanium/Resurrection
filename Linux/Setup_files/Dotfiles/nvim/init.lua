require("config.lazy")
require("config.keymap")

-- TODO : Setup the Formatter. 

--- General Configs ---- 

local opts = { noremap = true, silent = true }

vim.opt.clipboard = "unnamedplus" -- This sets the Clipboard as the global. 
vim.opt.background = "dark"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2        -- TAB = 2 spaces when showing tabs
vim.opt.shiftwidth = 2     -- Indents use 2 spaces
vim.opt.expandtab = true   -- Convert tabs to spaces
vim.opt.softtabstop = 2    -- Insert 2 spaces when pressing Tab
vim.o.winborder = "rounded" -- Makes the Hover Menu Borders rounded

--- Diagnostic Inline ---
vim.diagnostic.config({
  virtual_text = {
    spacing = 6,
    prefix = "➤", -- or "", "➤"
  },
  signs = true,
  underline = true,
  update_in_insert = false,
})
--I am Using Lazy Neovim as my Package Manager. So if you wish to update Packages, Use :Lazy Command to access it.
-- If you wish to install a package the write make a new lua file with return{{Your Plugin}} 
