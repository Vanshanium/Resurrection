local map = vim.keymap.set
local opts = { noremap = true, silent = true }


-------------------- EDITING --------------------
-- Finder --
vim.keymap.set("n", "<C-f>", function()
  require("telescope.builtin").current_buffer_fuzzy_find()
end)

-- Deletion and all --
vim.api.nvim_set_keymap('n', '<BS>', '"_X', { noremap = true, silent = true, desc = "Normal mode: Backspace deletes character without overwriting register" })
vim.api.nvim_set_keymap('v', '<BS>', '"_d', { noremap = true, silent = true, desc = "Visual mode: Backspace deletes selection without overwriting register" })
vim.api.nvim_set_keymap('n', '<C-BS>', '"_db', { noremap = true, silent = true, desc = "Normal mode: Ctrl+Backspace deletes word without overwriting register" })

-- CTRL + A for Selecting Everything --
vim.keymap.set({ "n", "i" }, "<C-a>", "<Esc>ggVG", { noremap = true, silent = true, desc = "Select all" })
vim.keymap.set("v", "<C-a>", "ggVG", { noremap = true, silent = true, desc = "Visual mode: Select all" })

-- Ctrl + S for Saving the File --
vim.keymap.set("n", "<C-s>", "<cmd>w<cr>", vim.tbl_extend("force", opts, { desc = "Normal mode: Save file" }))
vim.keymap.set("i", "<C-s>", "<Esc><cmd>w<cr>", vim.tbl_extend("force", opts, { desc = "Insert mode: Save file" }))
vim.keymap.set("v", "<C-s>", "<Esc><cmd>w<cr>", vim.tbl_extend("force", opts, { desc = "Visual mode: Save file" }))

-- Ctrl + C and V or Yank and Pasting --
map({ "n", "v" }, "<C-c>", "y", vim.tbl_extend("force", opts, { desc = "Copy to clipboard" }))
map({ "n", "v" }, "<C-v>", "p", vim.tbl_extend("force", opts, { desc = "Paste from clipboard" }))
map("i", "<C-v>", "<Esc>pa", vim.tbl_extend("force", opts, { desc = "Insert mode: Paste from clipboard" }))

-- Ctrl + X for Cutting --
vim.keymap.set("n", "<C-x>", "dd", vim.tbl_extend("force", opts, { desc = "Normal mode: Cut line" }))
vim.keymap.set("v", "<C-x>", "d", vim.tbl_extend("force", opts, { desc = "Visual mode: Cut selection" }))
vim.keymap.set("i", "<C-x>", "<Esc>ddi", vim.tbl_extend("force", opts, { desc = "Insert mode: Cut line" }))

-- Visual mode indenting
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent selection" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Unindent selection" })


-------------------- MODES --------------------

-- Making the ESC to jj to enter the Normal Mode --
vim.keymap.set("i", "jj", "<Esc>", { desc = "Insert mode: Exit to normal mode with 'jj'" })
vim.keymap.set("v", "jj", "<Esc>", { desc = "Visual mode: Exit to normal mode with 'jj'" })


-------------------- INSERTION --------------------

-- Insert in the append mode directly --
vim.keymap.set("n", "i", "a", { noremap = true, silent = true, desc = "Normal mode: 'i' enters append mode" })
vim.keymap.set("v", "i", "a", { noremap = true, silent = true, desc = "Visual mode: 'i' enters append mode" })

-- 'i' Shift+I --
vim.keymap.set("n", "I", "i", { noremap = true, silent = true, desc = "Normal mode: 'I' enters insert mode" })

-- This is for Making a new line and inserting into it --
vim.keymap.set("i", "<S-CR>", "<C-o>o", { desc = "Shift+Enter: new line below (insert)" })
vim.keymap.set("i", "<M-CR>", "<C-o>O", { desc = "Alt+Enter: new line above (insert)" })
vim.keymap.set("n", "<S-CR>", "o<Esc>", { desc = "Shift+Enter: new line below (normal)" })
vim.keymap.set("n", "<M-CR>", "O<Esc>", { desc = "Alt+Enter: new line above (normal)" })



-------------------- NAVIGATIONS --------------------
-- HJKL to WASD Movement --
vim.keymap.set({ "n", "v" }, "w", "k", { noremap = true, desc = "Move up" })
vim.keymap.set({ "n", "v" }, "a", "h", { noremap = true, desc = "Move left" })
vim.keymap.set({ "n", "v" }, "s", "j", { noremap = true, desc = "Move down" })
vim.keymap.set({ "n", "v" }, "d", "l", { noremap = true, desc = "Move right" })

-- Line movement with q and e --
vim.keymap.set({ "n", "v" }, "q", "^", { desc = "Move to beginning of line" })
vim.keymap.set({ "n", "v" }, "e", "$", { desc = "Move to end of line" })

-- for going in middle of the () and "" and all --
vim.api.nvim_set_keymap('i', '()', '()<Left>', { noremap = true, silent = true, desc = "Insert mode: Auto-pair parentheses and move cursor inside" })
vim.api.nvim_set_keymap('i', '""', '""<Left>', { noremap = true, silent = true, desc = "Insert mode: Auto-pair double quotes and move cursor inside" })
vim.api.nvim_set_keymap('i', '{}', '{}<Left>', { noremap = true, silent = true, desc = "Insert mode: Auto-pair curly braces and move cursor inside" })
vim.api.nvim_set_keymap('i', '[]', '[]<Left>', { noremap = true, silent = true, desc = "Insert mode: Auto-pair square brackets and move cursor inside" })

-- This is for Moving to Top and Bottom of the File --
vim.keymap.set("n", "t", "gg", { noremap = true, silent = true, desc = "Move to top of file" })
vim.keymap.set("n", "b", "G", { noremap = true, silent = true, desc = "Move to bottom of file" })
vim.keymap.set("v", "t", "gg", { noremap = true, silent = true, desc = "Move to top of file" })
vim.keymap.set("v", "b", "G", { noremap = true, silent = true, desc = "Move to bottom of file" })

-- NORMAL mode: move current line
vim.keymap.set("n", "<A-w>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-s>", ":m .+1<CR>==", { desc = "Move line down" })

-- VISUAL mode: move selected lines
vim.keymap.set("v", "<A-w>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "<A-s>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
