---
title: AstroVim
nav_order: 7060
has_children: false
parent: 實作案例
---


# AstroVim


## Subject

* [Link](#link)
* [Install](#install)
* [Uninstall](#uninstall)
* [Keybind](#keybind)

## Link

* [AstroVim](https://github.com/kabinspace/AstroVim)

## Install

基本上執行下面的指令，clone到「~/.config/nvim」這個資料夾

``` sh
git clone https://github.com/kabinspace/AstroVim.git ~/.config/nvim
```

然後執行

```
nvim +PackerSync
```

就會[自動安裝](https://github.com/kabinspace/AstroVim/blob/main/lua/core/utils.lua#L18)「[packer.nvim](https://github.com/wbthomason/packer.nvim)」，

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

* [https://github.com/kabinspace/AstroVim/blob/main/lua/core/mappings.lua](https://github.com/kabinspace/AstroVim/blob/main/lua/core/mappings.lua)
