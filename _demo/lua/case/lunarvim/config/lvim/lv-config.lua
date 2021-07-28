-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
-- * ~/.config/lvim/lv-config.lua
-- * https://github.com/ChristianChiarulli/LunarVim/blob/rolling/utils/installer/lv-config.example-no-ts.lua
-- * https://github.com/ChristianChiarulli/LunarVim/blob/rolling/utils/installer/lv-config.example.lua
-- * https://github.com/ChristianChiarulli/lvim/blob/master/lv-config.lua

-- general
lvim.format_on_save = true
lvim.lint_on_save = true
--lvim.colorscheme = "spacegray"
lvim.colorscheme = "gruvbox"
--lvim.colorscheme = "onedark"
--lvim.colorscheme = "dracula"

vim.opt.expandtab = false
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.wrap = true
--vim.opt.scrolloff = 5
--vim.opt.sidescrolloff = 15

vim.cmd [[
" ## WildMenu
set wildcharm=<C-o>

cnoremap <C-y> <Up>

if has('nvim')
  cnoremap <C-l> <Down><BS><C-o>
else
  cnoremap <C-l> <Down>
endif


" ## Move Line
nnoremap <S-PageUp> :m-2<CR>
nnoremap <S-PageDown> :m+<CR>
inoremap <S-PageUp> <Esc>:m-2<CR>i
inoremap <S-PageDown> <Esc>:m+<CR>i

" ## Show Invisibles
set listchars=tab:→\ ,trail:·,extends:↷,precedes:↶
set list
nnoremap <Bslash>a :set list!<CR>



let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
let g:better_whitespace_ctermcolor=132


]]


-- keymappings
lvim.leader = "space"
-- overwrite the key-mappings provided by LunarVim for any mode, or leave it empty to keep them
-- lvim.keys.normal_mode = {
--	 Page down/up
--	 {'[d', '<PageUp>'},
--	 {']d', '<PageDown>'},
--
--	 Navigate buffers
--	 {'<Tab>', ':bnext<CR>'},
--	 {'<S-Tab>', ':bprevious<CR>'},
-- }
-- if you just want to augment the existing ones then use the utility function
-- require("utils").add_keymap_insert_mode({ silent = true }, {
-- { "<C-s>", ":w<cr>" },
-- { "<C-c>", "<ESC>" },
-- })
-- you can also use the native vim way directly
-- vim.api.nvim_set_keymap("i", "<C-Space>", "compe#complete()", { noremap = true, silent = true, expr = true })

lvim.keys.normal_mode = {

	-- ## Quick Switch
	{'<C-k>', ':bprevious<CR>'},
	{'<C-j>', ':bnext<CR>'},
	{'<C-h>', ':tabprevious<CR>'},
	{'<C-l>', ':tabnext<CR>'},
	{'<Tab>', '<C-w>w'},
	{'<Bs>', '<C-w>W'},
	-- ## Resize Window
	{'<S-Up>', '<C-w>+'},
	{'<S-Down>', '<C-w>-'},
	{'<S-Left>', '<C-w><'},
	{'<S-Right>', '<C-w>>'},
	-- ## Bufer Delete
	{'<Bslash>q', ':bdelete<CR>'},
	{'<Bslash>z', ':bdelete!<CR>'},
	{'<Bslash>x', ':%bdelete<CR>'},
	{'<Bslash>c', ':%bdelete!<CR>'},

}


-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--	 local function buf_set_option(...)
--		 vim.api.nvim_buf_set_option(bufnr, ...)
--	 end
--	 --Enable completion triggered by <c-x><c-o>
--	 buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- Additional Plugins
-- lvim.plugins = {
--		 {"folke/tokyonight.nvim"}, {
--				"ray-x/lsp_signature.nvim",
--				config = function() require"lsp_signature".on_attach() end,
--				event = "InsertEnter"
--		 }
-- }

lvim.plugins = {
	-- ## https://github.com/ntpeters/vim-better-whitespace
	{
		"ntpeters/vim-better-whitespace",
		config = function()
--			vim.g.better_whitespace_enabled=1
--			vim.g.strip_whitespace_on_save=1
--			vim.g.strip_whitespace_confirm=0
--			vim.g.better_whitespace_ctermcolor=132
		end
	},
	-- ## ColorScheme
	-- {
	-- 	'dracula/vim',
	-- 	as = 'dracula'
	-- },
	-- {
	-- 	'morhetz/gruvbox'
	-- },
		{"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
	-- {
	-- 	'joshdick/onedark.vim'
	-- },
	-- {
	-- 	'liuchengxu/space-vim-theme'
	-- },
	-- {
	-- 	'sickill/vim-monokai'
	-- }

}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--	 { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }

-- Additional Leader bindings for WhichKey
