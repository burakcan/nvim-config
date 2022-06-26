local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
    return
end

bufferline.setup {
    close_command = "Bdelete! %d",
    diagnostics = "coc",
    sort_by = "directory"
}
