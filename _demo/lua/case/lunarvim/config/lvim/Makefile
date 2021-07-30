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
	install -Dm644 ./lv-config.lua ~/.config/lvim/lv-config.lua
.PHONY: install

remove:
	rm -f ~/.config/lvim/lv-config.lua
.PHONY: remove
