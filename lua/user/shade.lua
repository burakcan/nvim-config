local status_ok, shade = pcall(require, "shade")
if not status_ok then
    vim.notify("Failed to load shade")
    return
end

shade.setup({
    overlay_opacity = 70,
})
