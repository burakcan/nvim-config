local status_ok, gruvbox = pcall(require, "gruvbox")
if not status_ok then
    vim.notify("Failed to load gruvbox")
    return
end

local status_ok, autodm = pcall(require, "auto-dark-mode")
if not status_ok then
    vim.notify("Failed to load auto-dark-mode")
    return
end

autodm.setup({
    update_interval = 1000000000,
    set_dark_mode = function()
        vim.opt.background = "dark"
    end,
    set_light_mode = function()
        vim.opt.background = "light"
    end,
})

autodm.init()

vim.cmd([[colorscheme gruvbox]])
