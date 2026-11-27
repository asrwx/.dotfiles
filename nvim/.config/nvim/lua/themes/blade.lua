vim.pack.add({
    "https://github.com/sirzif/blade.nvim"
})

require("blade").setup({
    styles = {
        transparency = true,
        bold = false,
        italic = false,
        dim_inactive = false,
    },
    enable = {
        terminal = true,
    },
})

vim.cmd("colo blade")
