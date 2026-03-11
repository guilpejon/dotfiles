# Guil's Dotfiles

Personal MacOS dotfiles. Configs are applied via symlinks — edits here take effect immediately.

## Setup

```bash
git clone git@github.com:guilpejon/dotfiles.git ~/.dotfiles
```

Create required directories:

```bash
mkdir -p ~/.config/nvim
mkdir -p ~/.config/ghostty
```

Then create symlinks:

```bash
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/.gitignore ~/.gitignore
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/ghostty/config ~/.config/ghostty/config
ln -s ~/.dotfiles/asdf/.asdfrc ~/.asdfrc
ln -s ~/.dotfiles/rails/.railsrc ~/.railsrc
ln -s ~/.dotfiles/rails/.gemrc ~/.gemrc
```

Add to `~/.zshrc` (run these after completing the Dev Tools step):

```bash
source ~/.dotfiles/zsh/functions
source ~/.dotfiles/zsh/aliases
source ~/.dotfiles/zsh/configurations
```

---

## New MacBook

### 1. MacOS

```bash
# enable key repeat
defaults write -g ApplePressAndHoldEnabled -bool false
```

### 2. Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
```

### 3. Ghostty

```bash
brew install --cask ghostty
ln -s ~/.dotfiles/ghostty/config ~/.config/ghostty/config
```

`term = xterm-256color` is set in the config so SSH sessions show colors correctly on remote machines.

### 4. Git

```bash
brew install git gh
```

```bash
ssh-keygen -t rsa
ssh-add
```

Add the public key to GitHub: copy `~/.ssh/id_rsa.pub` and paste it at github.com → Settings → SSH keys.

Clone the dotfiles repo and create all symlinks (see [Setup](#setup)), then create `~/.gitconfig.local` (kept outside repo) with your identity:

```bash
cat > ~/.gitconfig.local << 'EOF'
[user]
    name = Your Name
    email = your@email.com
EOF
```

Notable config: delta pager with side-by-side diffs, rebase on pull, auto-prune remotes, rerere enabled.

### 5. zsh

```bash
brew install zsh
brew install powerlevel10k
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc

# terminal autocomplete (suggestions + syntax highlighting)
brew install zsh-autosuggestions zsh-syntax-highlighting
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
```

### 6. Dev Tools

```bash
brew install eza btop bat zoxide git-delta lazygit fzf jq rg fd wget watch gpg
brew install --cask rectangle
```

### 7. Mac Apps

```bash
brew install --cask whatsapp
brew install --cask arc
```

### 8. Neovim

```bash
brew install neovim
```

Uses [LazyVim](https://lazyvim.github.io). Run `:Lazy` inside Neovim to manage plugins.

### 9. asdf

```bash
brew install asdf
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ~/.zshrc

asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add python
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
```

### 10. Claude Code

```bash
npm install -g @anthropic-ai/claude-code
```

---

## zsh Aliases

```bash
# vim
vim          → nvim
:q           → exit

# terminal tools
ls           → eza -la --icons --git
ll           → eza -l --icons --git
lt           → eza --tree --icons --git-ignore
cat          → bat --style=auto
top          → btop

# git
gs           → git status
gco          → git checkout
gcm          → git commit -m
gps          → git push
gpl          → git pull
ga           → git add -A
gap          → git add -p
gd           → git diff
gb           → git branch -v
glog         → git log (pretty graph)
gst          → git stash
gstp         → git stash pop
grbi         → git rebase -i
gcp          → git cherry-pick
gwip         → git add -A && git commit -m "WIP"
gunwip       → git reset HEAD~1

# Rails
be           → bundle exec
bec          → bundle exec rails console
bes          → bundle exec rails server
bedb         → bundle exec rails db:migrate
bedbs        → bundle exec rails db:migrate:status
bert         → bundle exec rspec

# docker
docker-clean → prune containers, images, networks, volumes

# k8s
k            → kubectl
kgp          → k get pods
kdp          → k delete pod
kswitch_ns   → switch namespace (fzf)
kswitch_ctx  → switch context (fzf)
kshell       → exec into pod shell (fzf)
kbash        → exec into pod bash (fzf)
klogs        → tail pod logs (fzf)
```

---

## Neovim Keymaps

```
<space>       leader

# navigation
<C-d/u>       scroll half page, cursor stays centered
n / N         search next/prev, cursor stays centered
,,            switch to last file
<S-arrow>     move between splits
<tab-arrow>   resize splits

# tabs
te            new tab
<tab>         next tab
<S-tab>       prev tab
tw            close tab

# splits
ss            split horizontal
sv            split vertical

# editing
x             delete char (no register)
Q             indent paragraph
<leader>s     find & replace word under cursor
<leader>m     toggle split/join block (treesj — great for JSON)

# file tree
<leader>p     toggle NeoTree
  ○           unstaged changes
  ●           staged
              new file
              modified
  ✖           deleted
  ?           untracked

# git
gb            git blame
go            open file in browser
<leader>gg    open lazygit

# telescope
<C-p>         search git files
<leader>f     find files
sr            live grep
sc            search word under cursor
\\            list open buffers

# LSP
gr            find references
<leader>cr    rename symbol
K             hover docs
<C-j>         next diagnostic

# comments
gcc           comment line
gc            comment selection (visual)

# vim-surround
cs"'          change "" to ''
cst"          change tag to "
ds"           delete surrounding "
ysiw]         wrap word in []
yss)          wrap line in ()
S<p>          wrap visual selection in <p> (visual line)

# testing (neotest)
<leader>tr    run nearest test
<leader>tf    run all tests in file
<leader>ts    toggle test summary panel
<leader>to    open test output

# AI (gen.nvim — local Ollama fallback)
<leader>]     open gen prompt
```

---

## Rails

```bash
ln -s ~/.dotfiles/rails/.railsrc ~/.railsrc
ln -s ~/.dotfiles/rails/.gemrc ~/.gemrc
```
