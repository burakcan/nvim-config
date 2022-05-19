local alpha = require"alpha"
local dashboard = require("alpha.themes.dashboard")
local theme = require"alpha.themes.theta"

theme.config.layout[6] = {
    type = "group",
    val = {
      { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
      { type = "padding", val = 1 },
      dashboard.button("e", "  New file", "<cmd>ene<CR>"),
      dashboard.button("SPC f f", "  Find file"),
      dashboard.button("SPC f b", "  File browser"),
      dashboard.button("SPC g r", "  Live grep"),
      dashboard.button("SPC g s", "  Git status"),
      dashboard.button("SPC g b", "  Git branches"),
      dashboard.button( "u", "  Update plugins" , "<cmd>PackerSync<CR>"),
      dashboard.button( "q", "  Quit" , "<cmd>qa<CR>"),
    },
    position = "center",
}

alpha.setup(theme.config)
