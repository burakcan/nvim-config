local status_ok, material = pcall(require, "material")
if not status_ok then
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
vim.cmd "colorscheme material"

