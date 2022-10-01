# Guil's Dotfiles

Personalized Dotfiles for MacOS.

## Neovim

### Installation

- Copy `.config/nvim` to `~/`
- Run `:PackerSync` to install or update packages
- `:Mason` to install or update LSPs 

### Dependencies

```
brew install lua-language-server rg
npm install -g typescript-language-server typescript
```

### Shortcuts

<details>
<summary> Shortcut List</summary>

```
\ - leader
C-a - select all
+ - increase next number in line
- - decrease next number in line
te - tab edit

# splits
ss - split horizontally
sv - split vertically
sh - move left
sk - move up
sj - move down
sl - move right
C-w-<left> - decrease horizontally
C-w-<right> - increase horizontally
C-w-<up> - increase vertically
C-w-<down> - decrease vertically

# git
<leader>gb - open blame window
<leader>go - open file in git repo

# telescope
;f - find files
;r - live ripgrep
\\ - show buffers
;; - open last option used
;e - diagnostics
sf - file browser
# in file browser window
q - close
N - create a new file
h - go to parent dir
r - rename file
d - remove file
y - copy file

# lspsaga
K - hover doc
gd - find definition
↳ o - open selected file
gp - peek definition
gr - rename
```
</details>
