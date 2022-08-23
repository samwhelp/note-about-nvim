default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make install'
	@echo
.PHONY: help


install:
	install -Dm644 ./config.lua ~/.config/lvim/config.lua
.PHONY: install

remove:
	rm -f ~/.config/lvim/config.lua
.PHONY: remove
