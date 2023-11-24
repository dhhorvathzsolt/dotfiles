-- Gitsigns
require("gitsigns").setup()

vim.keymap.set("n", "]h", ":Gitsigns next_hunk<CR>")
vim.keymap.set("n", "[h", ":Gitsigns prev_hunk<CR>")
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Git Preview hunk" })
vim.keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>", { desc = "Git Blame line" })

-- Fugitive
vim.keymap.set("n", "<leader>gd", ":Gvdiffsplit!<CR>", { desc = "Git Diff" })
vim.keymap.set("n", "<leader>gg", ":Git<CR>", { desc = "Git" })
vim.keymap.set("n", "<leader>gL", ":Git log<CR>", { desc = "Git Log" })
vim.keymap.set("n", "<leader>gb", ":Git blame<CR>", { desc = "Git Blame" })

vim.keymap.set("n", "<leader>gah", "<cmd>diffget //2<CR>")
vim.keymap.set("n", "<leader>gal", "<cmd>diffget //3<CR>")

-- LazyGit
vim.keymap.set("n", "<leader>gl", ":LazyGit<CR>", { desc = "Git Lazy" })
vim.g.lazygit_floating_window_scaling_factor = 1 -- scaling factor for floating window

-- Telescope
vim.keymap.set("n", "<leader>gs", require("telescope.builtin").git_status, { desc = "Git Status" })
