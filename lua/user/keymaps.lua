local status_ok, wk = pcall(require, "which-key")

if not status_ok then
    return
end

-- Space as leader
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", {
    noremap = true,
    silent = true
})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

wk.setup {}

local generic_opts_any = {
    noremap = true,
    silent = true
}

local generic_opts = {
    insert_mode = generic_opts_any,
    normal_mode = generic_opts_any,
    visual_mode = generic_opts_any,
    visual_block_mode = generic_opts_any,
    command_mode = generic_opts_any,
    term_mode = {
        silent = true
    }
}

local mode_adapters = {
    insert_mode = "i",
    normal_mode = "n",
    term_mode = "t",
    visual_mode = "v",
    visual_block_mode = "x",
    command_mode = "c"
}

wk.register({
    [";"] = { "<cmd>Alpha<CR>", "Dashboard" },
    ["w"] = { "<cmd>w!<CR>", "Save" },
    ["/"] = { "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", "Comment" },
    ["x"] = { "<cmd>Bdelete!<CR>", "Close Buffer" },
    ["h"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
    ["e"] = { "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END, inclusive_jump = true })<cr>",
        "Hop" },
    ["r"] = { "<cmd>Telescope coc references<cr>", "References" },

    j = {
        name = "Definition",
        j = { "<cmd>vsp<CR><Plug>(coc-definition)<C-W>T", "Jump to Definition" },
        s = { "<cmd>vsp<CR><Plug>(coc-definition)<C-W>", "Show Definition Vertical Split" },
        h = { "<cmd>sp<CR><Plug>(coc-definition)<C-W>", "Show Definition Horizontal Split" }
    },

    b = {
        name = "Buffers",
        j = { "<cmd>BufferLinePick<cr>", "Jump" },
        f = { "<cmd>Telescope buffers<cr>", "Find" },
        b = { "<cmd>BufferLineCyclePrev<cr>", "Previous" },
        e = { "<cmd>BufferLinePickClose<cr>", "Pick which buffer to close" },
        h = { "<cmd>BufferLineCloseLeft<cr>", "Close all to the left" },
        l = { "<cmd>BufferLineCloseRight<cr>", "Close all to the right" },
        D = { "<cmd>BufferLineSortByDirectory<cr>", "Sort by directory" },
        L = { "<cmd>BufferLineSortByExtension<cr>", "Sort by language" }
    },

    g = {
        name = "Git",
        j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
        k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
        l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
        p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
        r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
        R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
        s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
        u = { "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", "Undo Stage Hunk" },
        o = { "<cmd>Telescope git_status<cr>", "Status" },
        b = { "<cmd>Telescope git_branches<cr>", "Branches" },
        c = { "<cmd>Telescope git_commits<cr>", "Commits" },
        C = { "<cmd>Telescope git_bcommits<cr>", "Commits (for current file)" },
        d = { "<cmd>Gitsigns diffthis HEAD<cr>", "Git Diff" }
    },

    s = {
        name = "Search",
        b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
        c = { "<cmd>Telescope file_browser path=%:p:h theme=dropdown<cr>", "Find File Current Dir" },
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
        M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        R = { "<cmd>Telescope registers<cr>", "Registers" },
        t = { "<cmd>Telescope live_grep<cr>", "Text" },
        k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
        C = { "<cmd>Telescope commands<cr>", "Commands" },
        p = { "<cmd>lua require('telescope.builtin.internal').colorscheme({enable_preview = true})<cr>",
            "Colorscheme with Preview" }
    },

    c = {
        name = "Coc",
        a = { "<cmd>Telescope coc code_actions<cr>", "Code Action" },
        c = { "<cmd>Telescope coc<CR>", "Coc" },
        d = { "<cmd>Telescope coc diagnostics bufnr=0 theme=get_ivy<cr>", "Buffer Diagnostics" },
        f = { "<cmd>CocCommand editor.action.formatDocument<cr>", "Format" },
        s = { "<cmd>Telescope coc document_symbols<cr>", "Document Symbols" },
        S = { "<cmd>Telescope coc workspace_symbols<cr>", "Workspace Symbols" },
        r = { "<Plug>(coc-rename)", "Rename" }
    },

    T = {
        name = "Treesitter",
        i = { ":TSConfigInfo<cr>", "Info" }
    }
}, {
    mode = mode_adapters.normal_mode,
    opts = generic_opts.normal_mode,
    prefix = "<space>"
})

wk.register({
    ["/"] = { "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", "Comment" }
}, {
    mode = mode_adapters.visual_mode,
    opts = generic_opts.normal_mode,
    prefix = "<space>"
})
