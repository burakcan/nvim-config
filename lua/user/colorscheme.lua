local status_ok, material = pcall(require, "material")
if not status_ok then
    vim.notify("Could not load material")
    return
end

local status_ok, autodm = pcall(require, "auto-dark-mode")
if not status_ok then
    vim.notify("Could not load auto-dark-mode")
    return
end

material.setup({
    contrast = {
        line_numbers = true,
        sign_column = true,
        sidebars = true,
        floating_windows = true,
        non_current_windows = true,
        popup_menu = true
    },
    italics = {
        comments = true
    },
    disable = {
        eob_lines = true
    }
})

vim.g.material_style = "lighter"
vim.cmd "colorscheme onedarker"

autodm.setup({
	update_interval = 1000000000,
	set_dark_mode = function()
		vim.api.nvim_set_option('background', 'dark')
		vim.cmd('colorscheme onedarker')
	end,
	set_light_mode = function()
		vim.api.nvim_set_option('background', 'light')
		vim.cmd('colorscheme material')
	end,
})

autodm.init()
