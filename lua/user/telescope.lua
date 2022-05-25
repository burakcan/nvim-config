local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end

local actions = require("telescope.actions")

require("telescope").setup {
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close
            }
        }
    },
    extensions = {
        file_browser = {
            mappings = {
                ["i"] = {
                    ["<C-t>"] = require"telescope.actions".select_tab
                }
            }
        }
    }
}

telescope.load_extension "file_browser"
telescope.load_extension "coc"

