# Guil's Dotfiles

Personalized Dotfiles for MacOS.

## Installation

Clone this repo to your home folder.
```
git clone git@github.com:guilpejon/dotfiles.git ~/.dotfiles
```

After that, open `run.sh` and run the installation commands for the tools that you want to use.

## iTerm2

<details>
<summary>Expand</summary>

Use [this article](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x) to configure word jumps wih arrow keys.

Set "Reuse previous session's directory" in "Working Directory".

![image](https://user-images.githubusercontent.com/871362/211964181-627f0374-c882-4cf3-901a-eba63ffa5d4a.png)

### Configuration

Add one of the themes from the `iterm/` folder to iTerm2 by following [these steps](https://iterm2colorschemes.com/).
```
“Command” + “Shift” + “.” - show hidden folders in finder
```
</details>

## zsh

<details>
<summary>Expand</summary>

### Configuration
Add these lines to your `~/.zshrc`.

```
# ~/.zshrc

source ~/.dotfiles/.zsh/functions
source ~/.dotfiles/.zsh/aliases
source ~/.dotfiles/.zsh/configurations
```

</details>

## Neovim

<details>
<summary>Expand</summary>

### Installation

Install [Packer](https://github.com/wbthomason/packer.nvim), [rg](https://github.com/BurntSushi/ripgrep), linters and lsps.

```
brew install lua-language-server rg
npm i -g typescript-language-server typescript eslint_d prettier
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Copy `.config/nvim/.env.example.lua` to `.config/nvim/.env.lua` and add your OpenAI key to make neural work.

### Configuration

```
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
```

### Useful commands

```
:PackerSync - install/update packages
:Mason - install/update LSPs 
```

### Shortcuts

```
, - leader
te - tab edit

# splits
ss - split horizontally
sv - split vertically
sh or <S-LEFT> - move left
sk or <S-UP> - move up
sj or <S-DOWN> - move down
sl or <S-RIGHT> - move right
<tab-left> - reduce size horizontally
<tab-right> - increase size horizontally
<tab-up> - increase size vertically
<tab-down> - reduce size vertically

# git
<leader>gb - open blame window
<leader>go - open file in git repo

# nvim-tree
<leader>p - toggle nvim tree
<leader>v - open nvim tree with cursor on current file
<leader>x - collapse nvim-tree recursively
# in nvim-tree
g? - help
u - go up a directory
I - toggle git ignored files
H - toggle dotfiles
R - refresh
x - cut file/folder
p - paste file/folder
a - add file
d - remove
r - rename
<C-v> - vsplit
<C-x> - split

# ReplaceWithRegister
grr - replace entire line without losing buffer
gr (visual mode) - replace selection without losing buffer

# telescope
<C-p> - search git files
sf - search all files
sr - live ripgrep
\\ - show buffers
<leader>e - diagnostics
<leader>t - help tags

# comment
gcc - comment line
gc (in visual mode selection) - comment block

# vim-surround
cs"' - change text between "" to ''
cst" - change text between tags (e.g. <div>) to "
ds" - remove "" surrounding a text
ysiw] - turns "Hello world!" to "[Hello] World" when cursor is in "Hello"
ysiw[ - turns "Hello world!" to "[ Hello ] World" when cursor is in "Hello"
yss) - wraps entire line between (...)
yss( - wraps entire line between ( ... )
S<p> - in visual mode (pressing V) wraps entire line between <p></p>

# LSPs
gd - go to definition
K - hover definition
<leader>vws
<leader>vd
[d - go to next diagnostics
]d - go to previous diagnostics
<leader>vca 
<leader>vrr
<leader>vrn - rename word underneath cursor
<C-h> - 
# in autocomplete popup
<C-p> - previous item 
<C-n> - next item
<C-y> - confirm choice
<C-space> - mapping complete

# zenmode
<leader>zz - toggle zenmode

# vim-unimpaired
]q - :cnext
[q - :cprevious
]a - :next
[b - :bprevious
[<Space> - add newline before the cursor line 
]<Space> add newlines after the cursor line 
[e - exchange the current line with the one above 
]e - exchange the current line with the one below
[os - :set spell 
]os - :set nospell
yos - :set invspell
[x - encode XML
]x decode XML (and HTML)
[u - encode URLs 
]u decode URLs
[f - go to next file in the directory
]f - go to the previous file in the directory

# cellular-automaton
<leader>fml - make it rain

# neural
<C-n> - autocomplete code
<C-space> - OpenAI prompt
<leader>cd - document code
```

</details>

## asdf

<details>
<summary>Expand</summary>

### Installation

```
brew install asdf
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
```

#### Plugins

```
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add python
```

### Configuration

Create symlink to configuration file.

```
ln -s ~/.dotfiles/.asdfrc ~/.asdfrc
```

</details>

## Git

<details>
<summary>Expand</summary>

### Configuration
  
Create ssh key and add to agent.
  
```
ssh-keygen -t rsa # generate a new key if needed
ssh-add # add key to agent
```

Create symlink to configuration files.

```
ln -s ~/.dotfiles/.gitignore ~/.gitignore

# IMPORTANT: Remember to add your name and email to the ~/.gitconfig file
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

</details>
