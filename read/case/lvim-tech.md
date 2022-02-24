---
title: lvim-tech
nav_order: 7020
has_children: false
parent: 實作案例
---

# lvim-tech

## Subject

* [Link](#link)
* [Install](#install)
* [Uninstall](#uninstall)
* [微調](#微調)

## Link

* [lvim-tech/lvim](https://github.com/lvim-tech/lvim)


## Install

基本上執行下面的指令，clone到「~/.config/nvim」這個資料夾

``` sh
git clone https://github.com/lvim-tech/lvim.git ~/.config/nvim
```

然後執行

```
nvim
```

就會[自動安裝](https://github.com/lvim-tech/lvim/blob/production/lua/core/pack.lua#L92)「[packer.nvim](https://github.com/wbthomason/packer.nvim)」，

會安裝到「~/.local/share/nvim/site/pack/packer/opt/packer.nvim」這個路徑，

並且安裝預定好的「Plugin」。

並且編譯成「~/.local/share/nvim/site/lua/packer_compiled.lua」。

## Path

* ~/.config/nvim
* ~/.cache/nvim
* ~/.local/share/nvim


## Uninstall

若要移除，只要執行下面指令就可以了，也就刪除上所列的三個資料夾。

```
rm -rf ~/.config/nvim
rm -rf ~/.cache/nvim
rm -rf ~/.local/share/nvim
```

## 微調

### noexpandtab

我個人縮格慣用「Tab」而非「空白」。

修改「[~/.config/nvim/lua/configs/global/lvim.lua](https://github.com/lvim-tech/lvim/blob/production/lua/configs/global/lvim.lua#L103)」這個檔案

原本的

``` lua
expandtab = true,
```

[修改成](https://github.com/samwhelp/lvim/blob/production/lua/configs/global/lvim.lua#L104)

``` lua
noexpandtab = true,
```

這個就如同原本的「[set noexpandtab](https://github.com/samwhelp/tool-svim-core/blob/master/plugin/Svim.vim#L233)」。

這個程式碼實作，可以參考「[funcs.options_set](https://github.com/lvim-tech/lvim/blob/production/lua/core/funcs.lua#L46)」這個「function」。

### Keybind / CtrlSpace

因為 「Ctrl + Space」在我的環境是用來「切換中文輸入法」。

所以修改成「按兩次Space」來「觸發」。

修改「[~/.config/nvim/lua/configs/global/keymaps.lua](https://github.com/lvim-tech/lvim/blob/production/lua/configs/global/keymaps.lua#L10)」這個檔案

原本的

``` lua
{"<C-space>", ":CtrlSpace<CR>"}, -- CtrlSpace
```

[修改成](https://github.com/samwhelp/lvim/blob/production/lua/configs/global/keymaps.lua#L12)

```
{"<space><space>", ":CtrlSpace<CR>"}, -- CtrlSpace
```

### Keybind / LvimHelper

因為 「F11」在我的環境是用來「將視窗切換成全螢幕」。

所以修改成「F10」來「觸發」。

修改「[~/.config/nvim/lua/configs/global/keymaps.lua](https://github.com/lvim-tech/lvim/blob/production/lua/configs/global/keymaps.lua#L9)」這個檔案

原本的

``` lua
{"<F11>", ":LvimHelper<CR>"}, -- LvimHelper
```

[修改成](https://github.com/samwhelp/lvim/blob/production/lua/configs/global/keymaps.lua#L10)

```
{"<F10>", ":LvimHelper<CR>"}, -- LvimHelper
```

## Help

一些按鍵的綁定，可以在「[~/.config/nvim/help](https://github.com/lvim-tech/lvim/tree/production/help)」這個資料夾找到相關的文件。

| Help | Code |
| --- | --- |
| [~/.config/nvim/help/lvim_bindings_normal_mode.md](https://raw.githubusercontent.com/lvim-tech/lvim/production/help/lvim_bindings_normal_mode.md) | [~/.config/nvim/lua/configs/global/keymaps.lua](https://github.com/lvim-tech/lvim/blob/production/lua/configs/global/keymaps.lua#L3) |
| [~/.config/nvim/help/lvim_bindings_visual_mode.md](https://raw.githubusercontent.com/lvim-tech/lvim/production/help/lvim_bindings_visual_mode.md) | [~/.config/nvim/lua/configs/global/keymaps.lua](https://github.com/lvim-tech/lvim/blob/production/lua/configs/global/keymaps.lua#L65) |
