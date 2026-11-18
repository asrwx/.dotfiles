vim.pack.add({
    "https://github.com/sainnhe/sonokai"
})


vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "sonokai",
    callback = function()
        local hl_groups = {
            "Normal",
            "NormalFloat",
            "SignColumn",
            "NormalNC", -- background for non-current windows
            "EndOfBuffer",
            "MsgArea",
            "FloatBorder",
            "StatusLine",
            "StatusLineNC",
            "ColorColumn",
            "TabLine",
            "TabLineFill",
            "TabLineSel",
            "LineNr",
            "Cursor",
            "CursorLine",
            "CursorLineNr",
        }
        for _, group in ipairs(hl_groups) do
            vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
        end
    end,
})

vim.cmd("colo sonokai")
