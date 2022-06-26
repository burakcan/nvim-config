local status_ok, scrollbar = pcall(require, "scrollbar")
if not status_ok then
    vim.notify("Failed to load nvim-scrollbar")
    return
end

scrollbar.setup()
require("scrollbar.handlers.search").setup()
