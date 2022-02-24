
--print('keybind')


vim.cmd([[
	" ## Move Line
	nnoremap <S-PageUp> :m-2<CR>
	nnoremap <S-PageDown> :m+<CR>
	inoremap <S-PageUp> <Esc>:m-2<CR>i
	inoremap <S-PageDown> <Esc>:m+<CR>i
]])


vim.cmd([[
	" ## WildMenu
	set wildcharm=<C-o>
	cnoremap <C-y> <Up>
	if has('nvim')
		cnoremap <C-l> <Down><BS><C-o>
	else
		cnoremap <C-l> <Down>
	endif
]])


vim.cmd([[
	" ## WildMenu
	set wildcharm=<C-o>
	cnoremap <C-y> <Up>
	if has('nvim')
		cnoremap <C-l> <Down><BS><C-o>
	else
		cnoremap <C-l> <Down>
	endif
]])


vim.cmd([[
	" ## Show Invisibles
	"set listchars=tab:→\ ,trail:·,extends:↷,precedes:↶
	set listchars=tab:»\ ,nbsp:+,trail:·,extends:→,precedes:←
	set list
	nnoremap <Bslash>a :set list!<CR>
]])


vim.cmd([[
	" ## Copy To Clipboard
	set mouse=a
	vnoremap <S-Tab> "+y
	"vnoremap <C-c> "+y
	"vmap <S-Tab> "+y
	"vmap <C-c> "+y
	"vnoremap <RightMouse> "+y
]])
