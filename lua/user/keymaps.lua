local opts = {
    noremap = true,
    silent = true
}

local keymap = vim.api.nvim_set_keymap

-- Space as leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Split navigation
keymap("n", "<C-Left>", "<C-w>h", opts)
keymap("n", "<C-Down>", "<C-w>j", opts)
keymap("n", "<C-Up>", "<C-w>k", opts)
keymap("n", "<C-Right>", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<S-Right>", ":bnext<CR>", opts)
keymap("n", "<S-Left>", ":bprevious<CR>", opts)
keymap("n", "<C-x>", "<cmd>Bdelete!<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope file_browser theme=dropdown<cr>", opts)
keymap("n", "<leader>fc", "<cmd>Telescope file_browser path=%:p:h theme=dropdown<cr>", opts)
keymap("n", "<leader>ol", "<cmd>Telescope oldfiles theme=dropdown<cr>", opts)
keymap("n", "<leader>gr", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>b", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fht", "<cmd>Telescope help_tags<cr>", opts)
keymap("n", "<leader>gs", "<cmd>Telescope git_status<cr>", opts)
keymap("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", opts)
keymap("n", "<leader>cc", "<cmd>Telescope coc<cr>", opts)
keymap("n", "<leader>cl", "<cmd>Telescope coc line_code_actions theme=cursor<cr>", opts)
keymap("n", "<leader>cf", "<cmd>Telescope coc file_code_actions theme=dropdown<cr>", opts)
keymap("n", "<leader>cs", "<cmd>Cheatsheet<cr>", opts)

-- Go to definition
keymap("n", "gd", "<cmd>vsp<CR><Plug>(coc-definition)<C-W>T", opts)
keymap("n", "gv", ":vsp<CR><Plug>(coc-definition)", opts)
keymap("n", "gs", ":sp<CR><Plug>(coc-definition)", opts)

-- Hop
keymap('n', 'f',
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
    {})
keymap('n', 'F',
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
    {})
keymap('o', 'f',
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>",
    {})
keymap('o', 'F',
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>",
    {})
keymap('', 't',
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
    {})
keymap('', 'T',
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
    {})
keymap('n', '<leader>e',
    "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END })<cr>", {})
keymap('v', '<leader>e',
    "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END })<cr>", {})
keymap('o', '<leader>e',
    "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END, inclusive_jump = true })<cr>",
    {})

