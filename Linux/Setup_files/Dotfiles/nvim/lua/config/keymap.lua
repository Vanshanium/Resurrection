local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Ctrl + S for Saving the File --
vim.keymap.set("n", "<C-s>", "<cmd>w<cr>", opts)
vim.keymap.set("i", "<C-s>", "<Esc><cmd>w<cr>", opts)
vim.keymap.set("v", "<C-s>", "<Esc><cmd>w<cr>", opts)


-- Ctrl + C and V or Yank and Pasting --
map({ "n", "v" }, "<C-c>", "y", opts)
map({ "n", "v" }, "<C-v>", "p", opts)
map("i", "<C-v>", "<Esc>pa", opts)

vim.keymap.set("n", "<C-x>", "dd", opts)

-- VISUAL mode: Ctrl+X cuts selection
vim.keymap.set("v", "<C-x>", "d", opts)

-- INSERT mode: leave insert, cut line, return to insert
vim.keymap.set("i", "<C-x>", "<Esc>ddi", opts)


--TODO-- 
--Make it more systematic
