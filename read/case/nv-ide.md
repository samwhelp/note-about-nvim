---
title: nv-ide
nav_order: 7040
has_children: false
parent: 實作案例
---

# nv-ide

## Subject

* [Link](#link)
* [Install](#install)
* [Uninstall](#uninstall)
* [Keybind](#keybind)

## Link

* [nv-ide](https://github.com/crivotz/nv-ide)

## Install

基本上執行下面的指令，clone到「~/.config/nvim」這個資料夾

``` sh
git clone https://github.com/crivotz/nv-ide.git ~/.config/nvim
```

然後執行

```
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
```

就會[自動安裝](https://github.com/crivotz/nv-ide/blob/master/lua/plugins.lua#L8)「[packer.nvim](https://github.com/wbthomason/packer.nvim)」，

會安裝到「~/.local/share/nvim/site/pack/packer/start/packer.nvim」這個路徑，

並且安裝預定好的「Plugin」。


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


## Keybind

* [https://github.com/crivotz/nv-ide/blob/master/lua/settings/keymap.lua](https://github.com/crivotz/nv-ide/blob/master/lua/settings/keymap.lua)
