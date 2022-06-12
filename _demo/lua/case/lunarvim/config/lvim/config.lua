--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT


--
-- * https://github.com/LunarVim/LunarVim/blob/rolling/utils/installer/config.example.lua
-- * https://github.com/samwhelp/note-about-nvim/blob/gh-pages/_demo/lua/case/lunarvim/config/lvim/config.lua
--




--------------------------------------------------------------------------------
--- Head: My / Option
--

vim.opt.expandtab = false
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.wrap = true
--vim.opt.scrolloff = 5
--vim.opt.sidescrolloff = 15

vim.cmd [[
" ## For Leave
set confirm
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
"set listchars=tab:→\ ,trail:·,extends:↷,precedes:↶
set listchars=tab:»\ ,nbsp:+,trail:·,extends:→,precedes:←
set list
nnoremap <Bslash>a :set list!<CR>
" ## Copy To Clipboard
set mouse=a
vnoremap <S-Tab> "+y
"vnoremap <C-c> "+y
"vmap <S-Tab> "+y
"vmap <C-c> "+y
"vnoremap <RightMouse> "+y
" Better Whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
let g:better_whitespace_ctermcolor=132
]]

--
--- Tail: My / Option
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
--- Head: My / ColorScheme
--

--lvim.colorscheme = "dracula"
--lvim.colorscheme = "monokai"
--lvim.colorscheme = "onedark"
--lvim.colorscheme = "space-vim-dark"
--lvim.colorscheme = "space_vim_theme"
--lvim.colorscheme = "lvim"
--lvim.colorscheme = "sonokai"
--lvim.colorscheme = "edge"
--lvim.colorscheme = "everforest"
--lvim.colorscheme = "gruvbox-material"
lvim.colorscheme = "gruvbox"

--
--- Tail: My / ColorScheme
--------------------------------------------------------------------------------



-- general
lvim.log.level = "warn"
lvim.format_on_save = true
--lvim.colorscheme = "onedarker"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )




--------------------------------------------------------------------------------
--- Head: My / Keybind
--

-- ## Save
lvim.keys.normal_mode['<C-s>'] = ':w<CR>'
-- ## Quick Switch
--lvim.keys.normal_mode['<C-k>'] = ':bprevious<CR>'
--lvim.keys.normal_mode['<C-j>'] = ':bnext<CR>'
--lvim.keys.normal_mode['<C-h>'] = ':tabprevious<CR>'
--lvim.keys.normal_mode['<C-l>'] = ':tabnext<CR>'
-- ## Switch Tab
lvim.keys.normal_mode['<S-Home>'] = ':tabprevious<CR>'
lvim.keys.normal_mode['<S-End>'] = ':tabnext<CR>'
-- ## Switch Window
lvim.keys.normal_mode['<Tab>'] = '<C-w>w'
lvim.keys.normal_mode['<Bs>'] = '<C-w>W'
-- ## Resize Window
lvim.keys.normal_mode['<S-Up>'] = '<C-w>+'
lvim.keys.normal_mode['<S-Down>'] = '<C-w>-'
lvim.keys.normal_mode['<S-Left>'] = '<C-w><'
lvim.keys.normal_mode['<S-Right>'] = '<C-w>>'
-- ## Bufer Delete
lvim.keys.normal_mode['<Bslash>q'] = ':bdelete<CR>'
lvim.keys.normal_mode['<Bslash>z'] = ':bdelete!<CR>'
lvim.keys.normal_mode['<Bslash>x'] = ':%bdelete<CR>'
lvim.keys.normal_mode['<Bslash>c'] = ':%bdelete!<CR>'

--
--- Tail: My / Keybind
--------------------------------------------------------------------------------




-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings

-- ---@usage disable automatic installation of servers
-- lvim.lsp.automatic_servers_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skiipped for the current filetype
-- vim.tbl_map(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
-- lvim.plugins = {
--     {"folke/tokyonight.nvim"},
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
-- }




--------------------------------------------------------------------------------
--- Head: My / Plugin
--

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

	-- ## dracula
	-- https://github.com/dracula/vim
	--{'dracula/vim', as = 'dracula'},

	-- ## gruvbox
	-- https://github.com/morhetz/gruvbox
	--{'morhetz/gruvbox'},

	-- ## monokai
	-- https://github.com/sickill/vim-monokai
	--{'sickill/vim-monokai'},

	-- ## onedark
	-- https://github.com/joshdick/onedark.vim
	--{'joshdick/onedark.vim'},

	-- ## space-vim-dark
	-- https://github.com/liuchengxu/space-vim-dark
	--{'liuchengxu/space-vim-dark'},

	-- ## space_vim_theme
	-- https://github.com/liuchengxu/space-vim-theme
	--{'liuchengxu/space-vim-theme'},

	-- ## lvim
	-- https://github.com/lvim-tech/lvim-colorscheme
	--{'lvim-tech/lvim-colorscheme'},

	-- ## sonokai
	-- https://github.com/sainnhe/sonokai
	--{'sainnhe/sonokai'},

	-- ## edge
	-- https://github.com/sainnhe/edge
	--{'sainnhe/edge'},

	-- ## everforest
	-- https://github.com/sainnhe/everforest
	--{'sainnhe/everforest'},

	-- ## gruvbox-material
	-- https://github.com/sainnhe/gruvbox-material
	--{'sainnhe/gruvbox-material'},

	-- ## gruvbox
	-- {'npxbr/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}}
	-- https://github.com/ellisonleao/gruvbox.nvim
	{ 'ellisonleao/gruvbox.nvim' }
}

--
--- Tail: My / Plugin
--------------------------------------------------------------------------------




-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
