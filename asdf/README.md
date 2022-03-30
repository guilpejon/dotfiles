# Installing

Copy `.asdfrc` to `~/.asdfrc`.

```
brew install asdf
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
```

### Installing ruby

```
asdf plugin add ruby
```

### Installing node

```
asdf plugin add nodejs 
```

### Installing python

Usually not needed because python3 comes pre installed with macOS.

```
asdf plugin add python
```

# Commands

```
asdf list
asdf list-all <PLUGIN>
asdf install <PLUGIN> <VERSION> 
global config: asdf global nodejs <VERSION>
local config: asdf local nodejs <VERSION>
```
