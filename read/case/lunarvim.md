---
title: LunarVim
nav_order: 7010
has_children: false
parent: 實作案例
---

# LunarVim

## Link

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

### Path

* ~/.local/bin/lvim
* ~/.local/share/applications/lvim.desktop
* ~/.config/lvim
* ~/.local/share/lunarvim
* ~/.cache/nvim


## 如何移除 LunarVim

* LunarVim Docs / [Uninstall](https://www.lunarvim.org/01-installing.html#uninstall)
* [uninstall.sh](https://github.com/LunarVim/LunarVim/blob/rolling/utils/installer/uninstall.sh)


## config.lua

* [~/.config/lvim/config.lua](https://github.com/samwhelp/note-about-nvim/blob/gh-pages/_demo/lua/case/lunarvim/config/lvim/config.lua)

## config.lua / example

* [https://github.com/ChristianChiarulli/lvim/blob/master/config.lua](https://github.com/ChristianChiarulli/lvim/blob/master/config.lua)
* [https://github.com/LunarVim/LunarVim/blob/rolling/utils/installer/config.example.lua](https://github.com/LunarVim/LunarVim/blob/rolling/utils/installer/config.example.lua)

### 安裝 config.lua

安裝我的[config.lua](https://github.com/samwhelp/note-about-nvim/blob/gh-pages/_demo/lua/case/lunarvim/config/lvim/config.lua)

``` sh
curl -fLo "$HOME/.config/lvim/config.lua" --create-dirs \
	'https://raw.githubusercontent.com/samwhelp/note-about-nvim/gh-pages/_demo/lua/case/lunarvim/config/lvim/config.lua'
```


## Keybind

* LunarVim Docs / [#
Default Plugins](https://www.lunarvim.org/plugins/02-default-plugins.html)

* 設定的「leader」是「[空白鍵](https://github.com/samwhelp/note-about-nvim/blob/gh-pages/_demo/lua/case/lunarvim/config/lvim/config.lua#L58)」
* `Ctrl + w` 是原本 nvim 就有的 分割視窗操作
* 我加了一些功能在 `\` 開頭的組合鍵

### 快速切換

| 按鍵組合 | 對應 | 說明 |
| --- | --- | --- |
| `<Backspace>` | [C-w W](https://neovim.io/doc/user/windows.html#CTRL-W_W) | 切換到上一個 Window |
| `<Tab>` | [C-w w](https://neovim.io/doc/user/windows.html#CTRL-W_w) | 切換到下一個 Window |

| 按鍵組合 | 對應 | 說明 |
| --- | --- | --- |
| `Ctrl + k` | [:bprevious](https://neovim.io/doc/user/windows.html#:bprevious) | 切換到上一個 Buffer |
| `Ctrl + j` | [:bnext](https://neovim.io/doc/user/windows.html#:bnext) | 切換到下一個 Buffer |
| `Ctrl + h` | [:tabprevious](https://neovim.io/doc/user/tabpage.html#:tabprevious) | 切換到上一個 TabPage |
| `Ctrl + l` | [:tabnext](https://neovim.io/doc/user/tabpage.html#:tabnext) | 切換到下一個 TabPage |

> 上面四個快速鍵，已經註解掉，改採用 lunarvim [內建的設定](https://www.lunarvim.org/plugins/02-default-plugins.html#status-and-bufferline)，表格如下

| 按鍵組合 | 對應 | 說明 |
| --- | --- | --- |
| `Shift + h` | [:bprevious](https://neovim.io/doc/user/windows.html#:bprevious) | 切換到上一個 Buffer |
| `Shift + l` | [:bnext](https://neovim.io/doc/user/windows.html#:bnext) | 切換到下一個 Buffer |


### 分割視窗移動邊界(更改大小)

| 按鍵組合 | 對應 |
| --- | --- |
| `Shift + Down` | [&lt;C-w&gt;-](https://neovim.io/doc/user/windows.html#CTRL-W_-) |
| `Shift + Up` | [&lt;C-w&gt;+](https://neovim.io/doc/user/windows.html#CTRL-W_+) |
| `Shift + Left` | [&lt;C-w&gt;<](https://neovim.io/doc/user/windows.html#CTRL-W_<) |
| `Shift + Right` | [&lt;C-w&gt;>](https://neovim.io/doc/user/windows.html#CTRL-W_>) |


### 移動單行

| 按鍵組合 | 對應 | 說明 | 注意事項 |
| --- | --- | --- | --- |
| `Shift + PageUp` | [:m-2](https://neovim.io/doc/user/change.html#:m)&lt;CR&gt; | Move line up. | Work on Normal Mode and Insert Mode |
| `Shift + PageDown` | [:m+](https://neovim.io/doc/user/change.html#:m)&lt;CR&gt; | Move line Down. | Work on Normal Mode and Insert Mode |


### 切換顯示特別字元

| 按鍵組合 | 對應 | 說明 |
| --- | --- | --- |
| `\ + a` | [`:set list!<CR>`](https://neovim.io/doc/user/options.html#'list') | 切換顯示特別字元 |


### 複製選取文字到剪貼簿

| 按鍵組合 | 對應 | 說明 |
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
