require("config.lazy")

vim.opt.background = "dark"
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2        -- TAB = 2 spaces when showing tabs
vim.opt.shiftwidth = 2     -- Indents use 2 spaces
vim.opt.expandtab = true   -- Convert tabs to spaces
vim.opt.softtabstop = 2    -- Insert 2 spaces when pressing Tab

-- This is the for the transparent background --
-- vim.opt.termguicolors = true

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

--I am Using Lazy Neovim as my Package Manager. So if you wish to update Packages, Use :Lazy Command to access it.
-- If you wish to install a package the write make a new lua file with return{{Your Plugin}} 
