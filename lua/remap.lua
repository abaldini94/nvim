vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- toggle/untoggle terminal
vim.keymap.set("n", "<leader>t", ":ToggleTerm size=30 direction=horizontal<CR>", { desc = "Toggle terminal" })
vim.keymap.set({ "t", "n" }, "<C-t>", "<C-\\><C-n>:ToggleTerm<CR>", { desc = "Untoggle terminal" })

-- convenient mappings
vim.keymap.set("i", "<C-b>t", "`", { desc = "Backtick" })
vim.keymap.set("i", "<S-Tab>", "<C-d>", { desc = "Unindent line" })

-- Save file
vim.keymap.set({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- extend selections
vim.keymap.set("v", "<C-Left>", "h", { desc = "Extend selection left" })
vim.keymap.set("v", "<C-Right>", "l", { desc = "Extend selection right" })
vim.keymap.set("v", "<C-Up>", "k", { desc = "Extend selection up" })
vim.keymap.set("v", "<C-Down>", "j", { desc = "Extend selection down" })

vim.keymap.set("n", "<C-Left>", "vh", { desc = "Select character left" })
vim.keymap.set("n", "<C-Right>", "vl", { desc = "Select character right" })
vim.keymap.set("n", "<C-Up>", "vk", { desc = "Select line up" })
vim.keymap.set("n", "<C-Down>", "vj", { desc = "Select line down" })

vim.keymap.set("i", "<C-Left>", "<Esc>vh", { desc = "Select character left" })
vim.keymap.set("i", "<C-Right>", "<Esc>vl", { desc = "Select character right" })
vim.keymap.set("i", "<C-Up>", "<Esc>vk", { desc = "Select line up" })
vim.keymap.set("i", "<C-Down>", "<Esc>vj", { desc = "Select line down" })
