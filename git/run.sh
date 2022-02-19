# Git config
git config --global user.name "NAME"
git config --global user.email "EMAIL"
git config --global core.editor "lvim"
git config --global rebase.autosquash "true"
git config --global apply.whitespace "fix"
git config --global branch.sort "-committerdate"
git config --global core.excludesfile "~/.gitignore"
git config --global core.attributesfile "~/.gitattributes"
git config --global pull.ff "only"

# Git aliases
git config --global alias.a "add"
git config --global alias.b "branch -v"

# git-delta config
git config --global core.pager "delta"
git config --global interactive.diffFilter "delta --color-only"
git config --global delta.navigate "true"  # use n and N to move between diff sections
git config --global merge.conflictstyle "diff3"
git config --global diff.colorMoved "default"
git config --global delta.theme "DarkNeon"
git config --global delta.line-numbers "true"
git config --global delta.side-by-side "true"
