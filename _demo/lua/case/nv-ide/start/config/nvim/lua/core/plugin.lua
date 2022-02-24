
--print('plugin')

--
-- ## Link
-- * https://github.com/lamartire/dotfiles/blob/master/.config/nvim/lua/plugins.lua
-- * https://github.com/wbthomason/packer.nvim
-- * https://github.com/wbthomason/packer.nvim#quickstart
-- ```
-- git clone --depth 1 \
--		https://github.com/wbthomason/packer.nvim \
--		~/.local/share/nvim/site/pack/packer/start/packer.nvim
-- ```
--

local execute = vim.api.nvim_command

-- ## ~/.local/share/nvim/site/pack/packer/start/packer.nvim
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

-- ## ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
--local install_path = vim.fn.stdpath("data").."/site/pack/packer/opt/packer.nvim"

-- print(install_path)


if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	--execute("!git clone https://github.com/wbthomason/packer.nvim "..install_path)
	-- execute "packadd packer.nvim"
end

vim.cmd [[packadd packer.nvim]]

require('packer').init()

return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'


	-- ## gruvbox
	-- https://github.com/ellisonleao/gruvbox.nvim
	use 'ellisonleao/gruvbox.nvim'

	-- You can alias plugin names
	use {'dracula/vim', as = 'dracula'}


	-- https://github.com/wbthomason/packer.nvim#bootstrapping
	if packer_bootstrap then
		--print('First sync...')
		require('packer').sync()
	end






end)
