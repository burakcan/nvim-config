local configs = require("nvim-treesitter.configs")

configs.setup {
    ensure_installed = "all",
    autotag = {
        enable = true
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true
    },
    indent = {
        enable = true
    }
}
