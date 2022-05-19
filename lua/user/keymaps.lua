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

-- Bufferline
vim.cmd [[
  nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
  nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
  nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
  nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
  nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
  nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
  nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
  nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
  nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
]]

-- Dashboard
