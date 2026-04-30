vim.pack.add({
    { src = "https://github.com/norcalli/nvim-colorizer.lua" },
    { src = "https://github.com/tpope/vim-fugitive" },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
    { src = "https://github.com/folke/tokyonight.nvim" },
    -- { src = "https://github.com/ray-x/go.nvim" },
    { src = "https://github.com/stevearc/oil.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim" },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    -- { src = "https://github.com/neovim/nvim-lspconfig" },
    -- { src = "https://github.com/hrsh7th/nvim-cmp" },
    -- { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
    -- { src = "https://github.com/L3MON4D3/LuaSnip" },
    -- { src = "https://github.com/saadparwaiz1/cmp_luasnip" },

    -- Compile your package with :GoBuild, install it with :GoInstall or test
    -- it with :GoTest. Run a single test with :GoTestFunc.
    -- GoBuild, GoInstall, GoTest, GoTestFunc, GoImport, GoDoc, GoDef
    -- https://github.com/fatih/vim-go/blob/master/doc/vim-go.txt
    -- { src = "https://github.com/fatih/vim-go" },
})

-- telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-f>', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })

-- lsp
-- vim.api.nvim_create_autocmd('LspAttach', {
--     desc = 'LSP actions',
--     callback = function(event)
--         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
--         vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
--         vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {})
--         vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
--     end,
-- })
--
-- vim.diagnostic.config({
--     virtual_text = true,
--     signs = true,
--     underline = true,
--     update_in_insert = false,
-- })
--
-- -- cmp
-- local cmp = require('cmp')
-- cmp.setup {
--     snippet = {
--         expand = function(args)
--             require('luasnip').lsp_expand(args.body)
--         end,
--     },
--     window = {
--         completion = cmp.config.window.bordered(),
--         documentation = cmp.config.window.bordered(),
--     },
--     sources = {
--         { name = 'nvim_lsp' },
--         {
--             name = 'luasnip',
--             option = { use_show_condition = false, show_autosnippers = true }
--         },
--     },
--     mapping = cmp.mapping.preset.insert({
--         ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--         ['<C-f>'] = cmp.mapping.scroll_docs(4),
--         ['<C-Space>'] = cmp.mapping.complete(),
--         ['<C-e>'] = cmp.mapping.abort(),
--         ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--     })
-- }
--
-- -- The nvim-cmp almost supports LSP's capabilities so you should advertise it to
-- -- LSP servers...
-- vim.lsp.config('gopls', {
--   capabilities = require('cmp_nvim_lsp').default_capabilities(),
-- })
--
-- vim.lsp.enable('gopls')
-- vim.lsp.enable('gdscript')
-- vim.lsp.enable('terraformls')
