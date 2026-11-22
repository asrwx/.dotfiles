vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "unokai",
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

-- vim.api.nvim_create_autocmd("ColorScheme", {
--     pattern = "unokai",
--     callback = function()
--         local hl_groups = vim.fn.getcompletion("", "highlight")
--         for _, group in ipairs(hl_groups) do
--             local hl = vim.api.nvim_get_hl(0, { name = group, link = false })
--             if hl.bold then
--                 hl.bold = nil
--                 vim.api.nvim_set_hl(0, group, hl)
--             end
--         end
--     end,
-- })

vim.cmd("colo unokai")
