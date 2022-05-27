local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
    return
end

local dashboard = require "alpha.themes.dashboard"
local theme = require "alpha.themes.theta"

theme.config.layout[6] = {
    type = "group",
    val = {{
        type = "text",
        val = "Quick links",
        opts = {
            hl = "SpecialComment",
            position = "center"
        }
    }, {
        type = "padding",
        val = 1
    }, dashboard.button("e", "  New file", "<cmd>ene<CR>"), dashboard.button("SPC s f", "  Find file"),
           dashboard.button("SPC s c", "  File browser"), dashboard.button("SPC s t", "  Live grep"),
           dashboard.button("SPC g o", "  Git status"), dashboard.button("SPC g b", "  Git branches"),
           dashboard.button("u", "  Update plugins", "<cmd>PackerSync<CR>"),
           dashboard.button("q", "  Quit", "<cmd>qa<CR>")},
    position = "center"
}

alpha.setup(theme.config)
