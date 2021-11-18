---
title: NvChad
nav_order: 7030
has_children: false
parent: 實作案例
---

# NvChad

## Subject

* [Link](#link)
* [Install](#install)
* [Uninstall](#uninstall)
* [Keybind](#keybind)

## Link

* https://github.com/NvChad/NvChad
* https://nvchad.github.io/getting-started/setup

## Install

基本上執行下面的指令，clone到「~/.config/nvim」這個資料夾

``` sh
git clone https://github.com/lvim-tech/lvim.git ~/.config/nvim
```

然後執行

```
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
```

就會[自動安裝](https://github.com/lvim-tech/lvim/blob/production/lua/core/pack.lua#L92)「[packer.nvim](https://github.com/wbthomason/packer.nvim)」，

會安裝到「~/.local/share/nvim/site/pack/packer/opt/packer.nvim」這個路徑，

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

請參考「NvChad / [Default mappings](https://nvchad.github.io/config/Default%20mappings)」的表格。
