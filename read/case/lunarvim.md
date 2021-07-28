---
title: LunarVim
nav_order: 7010
has_children: false
parent: 實作案例
---

# LunarVim

## Link

* [LunarVim](https://github.com/ChristianChiarulli/LunarVim)
* [Topic: neovim](https://www.chrisatmachine.com/neovim)
* [YouTube](https://www.youtube.com/c/ChrisAtMachine/videos)
* [Which Key](https://www.chrisatmachine.com/Neovim/15-which-key/)


## 如何安裝 LunarVim

> 注意 Neovim 版本要 (0.5 以上)

* LunarVim / [Install In One Command!](https://github.com/ChristianChiarulli/LunarVim#install-in-one-command)
* [install.sh](https://github.com/ChristianChiarulli/LunarVim/blob/rolling/utils/installer/install.sh#L102)

``` sh
bash <(curl -s https://raw.githubusercontent.com/ChristianChiarulli/lunarvim/master/utils/installer/install.sh)
```

## 如何安裝 LunarVim

* [uninstall.sh](https://github.com/ChristianChiarulli/LunarVim/blob/rolling/utils/installer/uninstall.sh)


## lv-config.lua

* [~/.config/lvim/lv-config.lua](https://github.com/samwhelp/note-about-nvim/blob/gh-pages/_demo/lua/case/lunarvim/config/lvim/lv-config.lua)

### 安裝 lv-config.lua

Run

``` sh
curl -fLo "$HOME/.config/lvim/lv-config.lua" --create-dirs \
	'https://raw.githubusercontent.com/samwhelp/note-about-nvim/gh-pages/_demo/lua/case/lunarvim/config/lvim/lv-config.lua'
```


## Keybind

* 設定的「leader」是「[空白鍵](https://github.com/samwhelp/note-about-nvim/blob/gh-pages/_demo/lua/case/lunarvim/config/lvim/lv-config.lua#L58)」
* `Ctrl + w` 是原本 nvim 就有的 分割視窗操作
* 我加了一些功能在 `\` 開頭的組合鍵

### 快速切換

| 按鍵 | 對應 | 說明 |
| --- | --- | --- |
| `<Backspace>` | [C-w W](https://neovim.io/doc/user/windows.html#CTRL-W_W) | 切換到上一個 Window |
| `<Tab>` | [C-w w](https://neovim.io/doc/user/windows.html#CTRL-W_w) | 切換到下一個 Window |
| `Ctrl + k` | [:bprevious](https://neovim.io/doc/user/windows.html#:bprevious) | 切換到上一個 Buffer |
| `Ctrl + j` | [:bnext](https://neovim.io/doc/user/windows.html#:bnext) | 切換到下一個 Buffer |
| `Ctrl + h` | [:tabprevious](https://neovim.io/doc/user/tabpage.html#:tabprevious) | 切換到上一個 TabPage |
| `Ctrl + l` | [:tabnext](https://neovim.io/doc/user/tabpage.html#:tabnext) | 切換到下一個 TabPage |


### 分割視窗移動邊界(更改大小)

| 按鍵 | 對應 |
| --- | --- |
| `Shift + Down` | [&lt;C-w&gt;-](https://neovim.io/doc/user/windows.html#CTRL-W_-) |
| `Shift + Up` | [&lt;C-w&gt;+](https://neovim.io/doc/user/windows.html#CTRL-W_+) |
| `Shift + Left` | [&lt;C-w&gt;<](https://neovim.io/doc/user/windows.html#CTRL-W_<) |
| `Shift + Right` | [&lt;C-w&gt;>](https://neovim.io/doc/user/windows.html#CTRL-W_>) |


### 移動單行

| 按鍵 | 對應 | 說明 | 注意事項 |
| --- | --- | --- | --- |
| `Shift + PageUp` | [:m-2](https://neovim.io/doc/user/change.html#:m)&lt;CR&gt; | Move line up. | Work on Normal Mode and Insert Mode |
| `Shift + PageDown` | [:m+](https://neovim.io/doc/user/change.html#:m)&lt;CR&gt; | Move line Down. | Work on Normal Mode and Insert Mode |


### 切換顯示特別字元

| 按鍵 | 對應 | 說明 |
| --- | --- | --- |
| `<Bslash>a` | [:set list!<CR>](https://neovim.io/doc/user/options.html#'list') | 切換到上一個 Window |



## lv-config / example

* [https://github.com/ChristianChiarulli/LunarVim/blob/rolling/utils/installer/lv-config.example-no-ts.lua](https://github.com/ChristianChiarulli/LunarVim/blob/rolling/utils/installer/lv-config.example-no-ts.lua)
* [https://github.com/ChristianChiarulli/LunarVim/blob/rolling/utils/installer/lv-config.example.lua](https://github.com/ChristianChiarulli/LunarVim/blob/rolling/utils/installer/lv-config.example.lua)
* [https://github.com/ChristianChiarulli/lvim/blob/master/lv-config.lua](https://github.com/ChristianChiarulli/lvim/blob/master/lv-config.lua)
