-- find file
vim.keymap.set("n", "<C-p>", ":find ")

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
