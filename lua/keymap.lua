-- find file, replaced with telescope
-- vim.keymap.set("n", "<C-p>", ":find ")

-- move text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

-- search & replace the word at cursor
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- run fmt
vim.keymap.set("n", "<space>f", ":!goimports -w %<CR> <BAR> :!go fmt %<CR>", { desc = "Fix imports and format Go files", silent = true })

-- add/remove go struct tags
vim.keymap.set("v", "<leader>at", ":AddGoTags<CR>", { desc = "Add Go struct tags", silent = true })
vim.keymap.set("v", "<leader>rt", ":RemoveGoTags<CR>", { desc = "Remove Go struct tags", silent = true })

-- copy to clipboard
vim.keymap.set("v", "<leader>c", "\"+y<CR>")

-- telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-f>', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })
