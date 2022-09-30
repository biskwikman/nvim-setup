local opts = { noremap = true, silent = true }

--[[ local term_opts = { silent = true } ]]

-- keymap variable
local k = vim.api.nvim_set_keymap

-- remap space as leader key
k("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
--[[ vim.g.maplocalleader = " " ]]

-- Modes
--   normal mode = n
--   insert mode = i
--   visual mode = v
--   visual block mode = x
--   term mode = t
--   command mode = c

-- Normal --
-- Better window navigation
k("n", "<C-h>", "<C-w>h", opts)
k("n", "<C-j>", "<C-w>j", opts)
k("n", "<C-k>", "<C-w>k", opts)
k("n", "<C-l>", "<C-w>l", opts)

-- Nvim Tree
k("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Resize with arrows
k("n", "<C-Up>", ":resize +2<CR>", opts)
k("n", "<C-Down>", ":resize -2<CR>", opts)
k("n", "<C-Left>", ":vertical resize -2<CR>", opts)
k("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Stay in indent mode
k("v", "<", "<gv", opts)
k("v", ">", ">gv", opts)

-- Navigate buffers
k("n", "<S-l>", ":bnext<CR>", opts)
k("n", "<S-h>", ":bprevious<CR>", opts)
k("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Insert --
-- Press jk fast to enter insert mode
k("i", "jk", "<ESC>", opts)

-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
k(
	"n",
	"<leader>f",
	"<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
	opts
)
k("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- format
k("n", "<leader>fm", "<cmd>lua vim.lsp.buf.formatting_sync()<cr>", opts)

--git
k("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
