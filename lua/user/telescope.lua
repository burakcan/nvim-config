local telescope = require("telescope")
local actions = require("telescope.actions")

if not telescope or not actions then
    return
end

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

