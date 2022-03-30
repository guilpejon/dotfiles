# Installing

Copy `.asdfrc` to `~/.asdfrc`.

### Install some plugins

```
brew install asdf
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
asdf plugin add nodejs 
asdf plugin add ruby
asdf plugin add python
# asdf list
# asdf list-all <PLUGIN>
# asdf install <PLUGIN> <VERSION> 
# global config: asdf global nodejs <VERSION>
# local config: asdf local nodejs <VERSION>
```
