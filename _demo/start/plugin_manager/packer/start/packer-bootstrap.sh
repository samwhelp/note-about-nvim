#!/usr/bin/env bash


#nvim +PackerSync

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'


##
## * https://github.com/wbthomason/packer.nvim#bootstrapping
##
