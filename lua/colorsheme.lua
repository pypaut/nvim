-- base colorscheme
vim.cmd.colorscheme("tokyonight")

-- transparent backgrounds
local highlights = {
    "EndOfBuffer",
    "Folded",
    "LineNr",
    "NonText",
    "Normal",
    "NormalNC",
    "SignColumn",
    "SpecialKey",
    "TablineFill",
    "VertSplit"
}

for _, name in pairs(highlights) do
    vim.cmd.highlight(name .. ' guibg=none ctermbg=none')
end
