-- :help options
vim.opt.clipboard = "unnamedplus"			    --allows access to system clipboard
vim.opt.cmdheight = 2					            --increase neovim command line height
vim.opt.conceallevel = 0				          --allows `` to be visible in markdown
vim.opt.number = true					            --show line numbers
vim.opt.shiftwidth = 2					          --number of spaces for auto indents
vim.opt.tabstop = 2					              --number of spaces for tabs
vim.opt.expandtab = true				          --converts tabs into spaces
vim.opt.cursorline = true				          --highlight current line
vim.opt.mouse = "a"					              --use mouse
vim.opt.splitbelow = true				          --new horizontal windows open below current
vim.opt.splitright = true				          --new vertical windows open right of current
vim.opt.numberwidth = 4                   --make line number column wider
vim.opt.scrolloff = 8                     --minimum number of lines above or below cursor
vim.opt.undofile = true                   --persistent undo
vim.opt.updatetime = 300                  --faster completion
vim.opt.showtabline = 2                   --always show tabs
vim.opt.signcolumn = "yes"                --show sign column
vim.opt.guifont = "monospace:h17"         --font
vim.opt.completeopt = { 
  "menuone", "noselect"
}
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.pumheight = 10
vim.opt.ignorecase = true
vim.opt.timeoutlen = 1000
vim.opt.writebackup = false
vim.opt.termguicolors = true

vim.opt.shortmess:append "c"
vim.opt.iskeyword:append "-"              --includes hyphens in words
