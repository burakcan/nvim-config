local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    return
end

lualine.setup {
    options = {
        theme = "gruvbox"
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { { "diagnostics", always_visible = true }, "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" }
    }
}
