
# Demo lvim config

## config.lua

### Install

Run

``` sh
curl -fLo "$HOME/.config/lvim/config.lua" --create-dirs \
	'https://raw.githubusercontent.com/samwhelp/note-about-nvim/gh-pages/_demo/lua/case/lunarvim/config/lvim/config.lua'
```


## Keybind

### Quick Switch

| Key | Map | Note |
| --- | --- | --- |
| `<Backspace>` | [C-w W](https://neovim.io/doc/user/windows.html#CTRL-W_W) | Previous Window |
| `<Tab>` | [C-w w](https://neovim.io/doc/user/windows.html#CTRL-W_w) | Next Window |
| `Ctrl + k` | [:bprevious](https://neovim.io/doc/user/windows.html#:bprevious) | Previous Buffer |
| `Ctrl + j` | [:bnext](https://neovim.io/doc/user/windows.html#:bnext) | Next Buffer |
| `Ctrl + h` | [:tabprevious](https://neovim.io/doc/user/tabpage.html#:tabprevious) | Previous TabPage |
| `Ctrl + l` | [:tabnext](https://neovim.io/doc/user/tabpage.html#:tabnext) | Next TabPage |


### Resize

| Key | Map |
| --- | --- |
| `Shift + Down` | [&lt;C-w&gt;-](https://neovim.io/doc/user/windows.html#CTRL-W_-) |
| `Shift + Up` | [&lt;C-w&gt;+](https://neovim.io/doc/user/windows.html#CTRL-W_+) |
| `Shift + Left` | [&lt;C-w&gt;<](https://neovim.io/doc/user/windows.html#CTRL-W_<) |
| `Shift + Right` | [&lt;C-w&gt;>](https://neovim.io/doc/user/windows.html#CTRL-W_>) |


### Move Line

| Key | Map | Desc | Notice |
| --- | --- | --- | --- |
| `Shift + PageUp` | [:m-2](https://neovim.io/doc/user/change.html#:m)&lt;CR&gt; | Move line up. | Work on Normal Mode and Insert Mode |
| `Shift + PageDown` | [:m+](https://neovim.io/doc/user/change.html#:m)&lt;CR&gt; | Move line Down. | Work on Normal Mode and Insert Mode |


### Toggle Show Invisibles

| Key | Map | Note |
| --- | --- | --- |
| `<Bslash>a` | [:set list!<CR>](https://neovim.io/doc/user/options.html#'list') | Toggle Show Invisibles |
