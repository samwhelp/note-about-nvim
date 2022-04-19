---
title: LunarVim
nav_order: 7010
has_children: false
parent: 實作案例
---

# LunarVim

## 相關連結

* [LunarVim](https://github.com/LunarVim/LunarVim)
* [lvim](https://github.com/ChristianChiarulli/lvim)
* [YouTube](https://www.youtube.com/c/ChrisAtMachine/videos)
* [Topic: neovim](https://www.chrisatmachine.com/neovim)
* [Which Key](https://www.chrisatmachine.com/Neovim/15-which-key/)
* [Lua 實作相關連結](https://samwhelp.github.io/note-about-nvim/read/link/lua.html)

## 輔助工具

* xfteditor / [xftlvim](https://samwhelp.github.io/tool-xfteditor/read/project/xfteditor/xftlvim.html)


## 如何安裝 LunarVim

> 注意 Neovim 版本要 (0.5 以上)

* LunarVim / [Install In One Command!](https://github.com/LunarVim/LunarVim#install-in-one-command)
* LunarVim Docs / [Installation](https://www.lunarvim.org/01-installing.html#stable)
* [install.sh](https://github.com/LunarVim/LunarVim/blob/rolling/utils/installer/install.sh#L84)

``` sh
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
```

## 相關路徑

### 檔案

* ~/.local/share/applications/lvim.desktop
* ~/.local/bin/lvim

### 資料夾

* ~/.config/lvim
* ~/.local/share/lunarvim
* ~/.cache/nvim
* ~/.local/share/nvim


## 如何移除 LunarVim

* LunarVim Docs / [Uninstall](https://www.lunarvim.org/01-installing.html#uninstall)
* [uninstall.sh](https://github.com/LunarVim/LunarVim/blob/rolling/utils/installer/uninstall.sh)

基本上只要移除上面的相關「檔案」和「資料夾就行了」。

``` sh
rm -f ~/.local/share/applications/lvim.desktop
rm -f ~/.local/bin/lvim

rm -rf ~/.config/lvim
rm -rf ~/.local/share/lunarvim
rm -rf ~/.cache/nvim
rm -rf ~/.local/share/nvim
```

## config.lua

> 關於「LunarVim」的「個人設定檔」，路徑如下

* [~/.config/lvim/config.lua](https://github.com/samwhelp/note-about-nvim/blob/gh-pages/_demo/lua/case/lunarvim/config/lvim/config.lua)


## config.lua / 官方範例

* [https://github.com/ChristianChiarulli/lvim/blob/master/config.lua](https://github.com/ChristianChiarulli/lvim/blob/master/config.lua)
* [https://github.com/LunarVim/LunarVim/blob/rolling/utils/installer/config.example.lua](https://github.com/LunarVim/LunarVim/blob/rolling/utils/installer/config.example.lua)


### 如何安裝我的 config.lua

執行下面指令，安裝我的[~/.config/lvim/config.lua](https://github.com/samwhelp/note-about-nvim/blob/gh-pages/_demo/lua/case/lunarvim/config/lvim/config.lua)

``` sh
curl -fLo "$HOME/.config/lvim/config.lua" --create-dirs \
	'https://raw.githubusercontent.com/samwhelp/note-about-nvim/gh-pages/_demo/lua/case/lunarvim/config/lvim/config.lua'
```

## 關於 ~/.local/bin/lvim

執行

``` sh
cat ~/.local/bin/lvim
```

顯示

```
#!/bin/sh

export LUNARVIM_RUNTIME_DIR="${LUNARVIM_RUNTIME_DIR:-"$HOME/.local/share/lunarvim"}"
export LUNARVIM_CONFIG_DIR="${LUNARVIM_CONFIG_DIR:-"$HOME/.config/lvim"}"
export LUNARVIM_CACHE_DIR="${LUNARVIM_CACHE_DIR:-"$HOME/.cache/nvim"}"

exec nvim -u "$LUNARVIM_RUNTIME_DIR/lvim/init.lua" "$@"
```

## 小技巧

將「~/.local/bin/vi」連結到「~/.local/bin/lvim」

``` sh
cd ~/.local/bin/
ln -sf lvim vi
```

這樣在下指令的時候，執行「vi」，就等同執行「lvim」。


## ColorScheme

關於「ColorScheme」，我改採用「[ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)」。

如何設定，請參考我的「[config.lua](https://github.com/samwhelp/note-about-nvim/blob/gh-pages/_demo/lua/case/lunarvim/config/lvim/config.lua)」。

有兩個地方需要設定，

1. [納入Plugin Manager](https://github.com/samwhelp/note-about-nvim/blob/gh-pages/_demo/lua/case/lunarvim/config/lvim/config.lua#L333)的程式片段如下


``` lua
lvim.plugins = {

	-- ## gruvbox
	-- {'npxbr/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}}
	-- https://github.com/ellisonleao/gruvbox.nvim
	{'ellisonleao/gruvbox.nvim'}
}
```


2. [設定採用](https://github.com/samwhelp/note-about-nvim/blob/gh-pages/_demo/lua/case/lunarvim/config/lvim/config.lua#L87)的程式片段如下

``` lua
lvim.colorscheme = "gruvbox"
```




## Keybind

* LunarVim Docs / [#
Default Plugins](https://www.lunarvim.org/plugins/02-default-plugins.html)
* LunarVim 設定的「leader」是「[空白鍵](https://github.com/samwhelp/note-about-nvim/blob/gh-pages/_demo/lua/case/lunarvim/config/lvim/config.lua#L96)」，所以主要功能是以「`空白鍵`」為開頭。
* 因為有「[which-key.nvim](https://github.com/folke/which-key.nvim)」，所以按下「`空白鍵`」，會有「[功能提示](https://www.lunarvim.org/plugins/02-default-plugins.html#keybindings)」。
* 而「`Ctrl + w`」是原本「nvim」就有的「分割視窗操作」。
* 我有加了一些功能，以「`\`」開頭的組合鍵。

| 分類 |
| --- |
| [開啟 Terminal](#開啟-terminal) |
| [開啟 File Explorer](#開啟-file-explorer) |
| [快速切換](#快速切換) |
| [分割視窗移動邊界(更改大小)](#分割視窗移動邊界(更改大小)) |
| [移動單行](#移動單行) |
| [切換顯示特別字元](#切換顯示特別字元) |
| [複製選取文字到剪貼簿](#複製選取文字到剪貼簿) |


### 開啟 Terminal

| 按鍵組合 (LunarVim預設) | 對應 | 說明 |
| --- | --- | --- |
| `Ctrl + t` | --- | 開啟 [Terminal](https://www.lunarvim.org/plugins/02-default-plugins.html#terminal) |

### 開啟 File Explorer

| 按鍵組合 (LunarVim預設) | 對應 | 說明 |
| --- | --- | --- |
| `Space + e` | --- | 開啟 [File Explorer](https://www.lunarvim.org/plugins/02-default-plugins.html#file-explorer) |


### 快速切換

> 我原本有一組慣用的「[快速切換](https://samwhelp.github.io/note-about-vim/read/adjustment/keybind/quick-switch/#%E8%A1%A8%E6%A0%BC%E8%AA%AA%E6%98%8E)」按鍵綁定。

> 根據「LunarVim」的特性，我換了另外一組「[快速切換](https://samwhelp.github.io/note-about-vim/read/adjustment/keybind/quick-switch/v2.html#%E8%A1%A8%E6%A0%BC%E8%AA%AA%E6%98%8E)」按鍵綁定。


| 按鍵組合 (我的設定) | 對應 | 說明 |
| --- | --- | --- |
| `<Backspace>` | [&lt;C-w&gt;W](https://neovim.io/doc/user/windows.html#CTRL-W_W) | 切換到上一個 Window |
| `<Tab>` | [&lt;C-w&gt;w](https://neovim.io/doc/user/windows.html#CTRL-W_w) | 切換到下一個 Window |


| 按鍵組合 (LunarVim預設) | 對應 | 說明 |
| --- | --- | --- |
| `Ctrl + k` | [&lt;C-w&gt;k](https://neovim.io/doc/user/windows.html#CTRL-W_k) | 切換到上方 Window |
| `Ctrl + j` | [&lt;C-w&gt;j](https://neovim.io/doc/user/windows.html#CTRL-W_j) | 切換到下方 Window |
| `Ctrl + h` | [&lt;C-w&gt;h](https://neovim.io/doc/user/windows.html#CTRL-W_h) | 切換到左方 Window |
| `Ctrl + l` | [&lt;C-w&gt;l](https://neovim.io/doc/user/windows.html#CTRL-W_l) | 切換到右方 Window |


| 按鍵組合 (LunarVim預設) | 對應 | 說明 |
| --- | --- | --- |
| `Shift + h` | [:bprevious](https://neovim.io/doc/user/windows.html#:bprevious) | 切換到上一個 Buffer |
| `Shift + l` | [:bnext](https://neovim.io/doc/user/windows.html#:bnext) | 切換到下一個 Buffer |


| 按鍵組合 (我的設定) | 對應 | 說明 |
| --- | --- | --- |
| `Shift + Home` | [:tabprevious](https://neovim.io/doc/user/tabpage.html#:tabprevious) | 切換到上一個 TabPage |
| `Shift + End` | [:tabnext](https://neovim.io/doc/user/tabpage.html#:tabnext) | 切換到下一個 TabPage |


### 分割視窗移動邊界(更改大小)

| 按鍵組合 (我的設定) | 對應 |
| --- | --- |
| `Shift + Down` | [&lt;C-w&gt;-](https://neovim.io/doc/user/windows.html#CTRL-W_-) |
| `Shift + Up` | [&lt;C-w&gt;+](https://neovim.io/doc/user/windows.html#CTRL-W_+) |
| `Shift + Left` | [&lt;C-w&gt;<](https://neovim.io/doc/user/windows.html#CTRL-W_<) |
| `Shift + Right` | [&lt;C-w&gt;>](https://neovim.io/doc/user/windows.html#CTRL-W_>) |


### 移動單行

| 按鍵組合 (我的設定) | 對應 | 說明 | 注意事項 |
| --- | --- | --- | --- |
| `Shift + PageUp` | [:m-2](https://neovim.io/doc/user/change.html#:m)&lt;CR&gt; | Move line up. | Work on Normal Mode and Insert Mode |
| `Shift + PageDown` | [:m+](https://neovim.io/doc/user/change.html#:m)&lt;CR&gt; | Move line Down. | Work on Normal Mode and Insert Mode |


### 切換顯示特別字元

| 按鍵組合 (我的設定) | 對應 | 說明 |
| --- | --- | --- |
| `\ + a` | [`:set list!<CR>`](https://neovim.io/doc/user/options.html#'list') | 切換顯示特別字元 |


### 複製選取文字到剪貼簿

| 按鍵組合 (我的設定) | 對應 | 說明 |
| --- | --- | --- |
| `Shift + Tab` | [`"+y`](https://vimhelp.org/gui_x11.txt.html#quoteplus) | 複製選取文字到剪貼簿 |

* [Vim: Cut, Copy and Paste to and from the system clipboard](https://francopasut.medium.com/vim-cut-copy-and-paste-to-and-from-the-system-clipboard-e11da66ca95c)
* [Vim: Cut, Copy and Paste to and from the system clipboard](https://francopasut-en.blogspot.com/2019/08/vim-cut-copy-and-paste-to-and-from.html)


| 按鍵組合 | 功能 | 說明 |
| --- | --- | --- |
| `"+x` | Cut | 剪下選取文字到剪貼簿 |
| `"+y` | Copy | 複製選取文字到剪貼簿 |
| `"+gP` | Paste | 將剪貼簿的內容貼上目前游標所在位置 |

**在 gVim 的組合鍵**

> 在 有些 Terminal 也適用下面這幾個組合鍵

> 在 atom, mousepad 也適用下面這幾個組合鍵

| 按鍵組合 | 說明 |
| --- | --- |
| `Shift + Delete` | Cut | 剪下選取文字到剪貼簿 |
| `Ctrl + Insert` | Copy | 複製選取文字到剪貼簿 |
| `Shift + Insert` | Paste | 將剪貼簿的內容貼上目前游標所在位置 |
