
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<M-l>", ":bnext<CR>", opts)
keymap("n", "<M-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Move in Insert Mode
keymap('i', '<M-k>', '<C-o>gk', opts)
keymap('i', '<M-j>', '<C-o>gj', opts)
keymap('i', '<M-h>', '<left>', opts)
keymap('i', '<M-l>', '<right>', opts)

-- Motions in Insert Mode
keymap('i', '<M-w>', '<C-o>w', opts)
keymap('i', '<M-b>', '<C-o>b', opts)
keymap('i', '<M-d>', '<C-o>d', opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- -- I hate typing these
  -- keymap("n", "H", "^", opts)
  -- keymap("n", "L", "$", opts)
  -- keymap("v", "H", "^", opts)
  -- keymap("v", "L", "$", opts)
  -- keymap("x", "H", "^", opts)
  -- keymap("x", "L", "$", opts)
  -- keymap("o", "H", "^", opts)
  -- keymap("o", "L", "$", opts)

-- Enter to main menu
keymap("n", "<leader><Home>", ":Alpha<CR>", opts)

-- NvimTree: main key = 'n'
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- quit 
keymap("n", "q", ":q<CR>", opts)

--save
keymap("n", "<C-s>", ":w<CR>", opts)

-- Packer Install
keymap('n', '<leader>p', ':so<CR> :PackerSync<CR>', opts)

keymap('n', '<leader>//', '<cmd>lua require("Comment.api").toggle_current_linewise()<CR>', opts)

keymap('x', '<leader>//', '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>', opts)

-- Telescope: main key = 't'

-- local telescopeCommands = {
--   a = { 'n', ':Telescope find_files<CR>'},
--   o = { 'n', ':Telescope live_grep<CR>'},
--   -- e = { 'n', ':Telescope projects<CR>'},
--   -- u = { 'n', ':Telescope buffers<CR>'},
-- }

keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>ft', ':Telescope live_grep<CR>', opts)
keymap("n", "<leader>fk", ":Telescope keymaps<CR>", opts)
-- Git: main key = 'g'
-- local gitCommands = {
--   a = { 'n', ':G<CR>'},
--   o = { 'n', ':Git status<CR>'},
--   e = { 'n', ':Gvdiffsplit<CR>'},
-- }


keymap('n', '<leader>ga', ':G<CR>', opts)
keymap('n', '<leader>gs', ':Git status<CR>', opts)
keymap('n', '<leader>gd', ':Gvdiffsplit<CR>', opts)

keymap('n', '<S-L>', ':vsp<CR><C-w>l:terminal<CR>a', opts)

-- DB
keymap('n', '<leader>bd', ':DBUI<CR>', opts)

keymap('n', '<leader>i', ':ToggleTerm direction=float<CR>', opts)

keymap('n', '<leader>q', ':Bdelete!<CR>', opts)
