

--print('colorscheme')

--vim.cmd 'colorscheme dracula'
--vim.cmd 'colorscheme gruvbox'

-- https://github.com/ellisonleao/gruvbox.nvim#usage
vim.opt.termguicolors = true
vim.o.background = 'dark' -- or 'light' for light mode
--vim.o.background = 'light'

vim.cmd([[
	colorscheme gruvbox
	"colorscheme dracula
]])
