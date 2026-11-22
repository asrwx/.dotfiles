vim.pack.add({
    "https://github.com/ficd0/ashen.nvim"
})

require("ashen").setup({
    style_presets = {
        bold_functions = false,
        italic_comments = false,
    },
    transparent = true,
    force_hi_clear = false,
    terminal = { enabled = true, },
    plugins = { autoload = true, },
    opts = {
        style = {
            bold = false,
            italic = false,
        },
    },
})

vim.cmd("colo ashen")
