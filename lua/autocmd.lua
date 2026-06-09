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

local function run_go_test(test_name, test_location)
    local project_root = vim.uv.cwd()

    vim.system(
        { "go", "test", "-run", "^"..test_name.."$", test_location },
        { text = true, cwd = project_root },
        function(obj)
            if obj.code == 0 then
                print("Result :\n" .. obj.stdout)
            else
                print("Error (code " .. obj.code .. ") :\n" .. obj.stderr)
            end
        end
    )
end

vim.api.nvim_create_user_command('Rm', function()
    local cf = vim.fn.expand('%')
    if cf == '' then print("Buffer has no file!") return end
    os.remove(cf)
end, {})

vim.api.nvim_create_user_command('GoTest', function()
    local test_name = vim.fn.expand("<cword>")
    if test_name == '' then print("Test name not found") return end

    local test_location = vim.fn.expand("%:h")
    test_location = "./"..test_location

    run_go_test(test_name, test_location)
end, {})
