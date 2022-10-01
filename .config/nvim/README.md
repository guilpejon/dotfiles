# Guil's Dotfiles

Personalized Dotfiles for MacOS.

## Neovim installation

- Copy `.config/nvim` to ~/
- Run `nvim +PackerSync` to install or update packages
- `:Mason` to install or update LSPs 

### Dependencies

```
brew install lua-language-server

npm install -g typescript-language-server typescript

brew install rg
```

### Shortcuts

<details>
<summary> Shortcut List</summary>


```
\ - leader

# lspconfig
[NOT WORKING] gD - jumps to declaration of the symbol under the cursor

# bufferline
[NOT WORKING] TAB - jumps to next buffer  
[NOT WORKING] shift-TAB - jumps to previous buffer

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
