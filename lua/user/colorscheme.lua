local material_loaded, material = pcall(require, "material")

if not material_loaded then
    vim.notify("material is not installed!")
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

vim.g.material_style = "palenight"
vim.cmd "colorscheme material"

