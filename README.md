# Guil's Dotfiles

Personal MacOS dotfiles. Configs are applied via symlinks — edits here take effect immediately.

## Setup

```bash
git clone git@github.com:guilpejon/dotfiles.git ~/.dotfiles
```

Then create symlinks:

```bash
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/.gitignore ~/.gitignore
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/asdf/.asdfrc ~/.asdfrc
ln -s ~/.dotfiles/rails/.railsrc ~/.railsrc
ln -s ~/.dotfiles/rails/.gemrc ~/.gemrc
```

Add to `~/.zshrc`:

```bash
source ~/.dotfiles/zsh/functions
source ~/.dotfiles/zsh/aliases
source ~/.dotfiles/zsh/configurations
```

---

## MacOS

```bash
/usr/sbin/softwareupdate --install-rosetta --agree-to-license  # M1 only
xcode-select --install
defaults write -g ApplePressAndHoldEnabled -bool false  # enable key repeat
```

---

## Brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
```

---

## Dev Tools

```bash
brew install eza btop bat zoxide git-delta lazygit
brew install fzf jq gh
brew install rg fd
brew install yarn npm wget watch
brew install gpg
brew install --cask ngrok
```

---

## iTerm2

```bash
brew install iterm2
```

- Use `iterm/` folder to import a color theme (Dracula or GruvboxDark)
- Set "Reuse previous session's directory" in Preferences → Profiles → Working Directory
- `Cmd+Shift+.` — show hidden files in Finder

---

## zsh

```bash
brew install zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
brew install romkatv/powerlevel10k/powerlevel10k
```

### Aliases

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

## Neovim

```bash
brew install neovim
```

Uses [LazyVim](https://lazyvim.github.io). Run `:Lazy` inside Neovim to manage plugins.

### Keymaps

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

## Git

```bash
ssh-keygen -t rsa
ssh-add
```

Create `~/.gitconfig.local` (kept outside repo):

```
[user]
    name = Your Name
    email = your@email.com
```

Notable config: delta pager with side-by-side diffs, rebase on pull, auto-prune remotes, rerere enabled.

---

## asdf

```bash
brew install asdf
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ~/.zshrc

asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add python
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
```

---

## Rails

```bash
ln -s ~/.dotfiles/rails/.railsrc ~/.railsrc
ln -s ~/.dotfiles/rails/.gemrc ~/.gemrc
```
