-- local function format_go_code()
--   vim.lsp.buf.format {
--     filter = function(client)
--       return client.name == "gopls"
--     end,
--
--     bufnr = vim.api.nvim_get_current_buf(),
--   }
-- end
--
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = "*.go",
--   callback = function()
--     format_go_code()
--   end,
-- })
--

vim.api.nvim_create_user_command('Rm', function()
    local cf = vim.fn.expand('%')
    if cf == '' then print("Buffer has no file!") return end
    os.remove(cf)
end, {})
