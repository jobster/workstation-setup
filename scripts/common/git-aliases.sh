echo
echo "Setting up Git aliases..."
git config --global alias.gst git status
git config --global alias.st status
git config --global alias.di diff
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.cp cherry-pick
git config --global alias.br branch
git config --global alias.sta stash
git config --global alias.llog "log --date=local"
git config --global alias.flog "log --pretty=fuller --decorate"
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.lol "log --graph --decorate --oneline"
git config --global alias.lola "log --graph --decorate --oneline --all"
git config --global alias.blog "log origin/master... --left-right"
git config --global alias.ds "diff --staged"
git config --global alias.fixup "commit --fixup"
git config --global alias.squash "commit --squash"
git config --global alias.amendit "commit --amend --no-edit"
git config --global alias.unstage "reset HEAD"
git config --global alias.rum "rebase master@{u}"

echo
echo "Setting up git-duet aliases..."
echo "alias dci='git duet-commit'" >> ~/.oh-my-zsh/custom/aliases.zsh
echo "alias drv='git duet-revert'" >> ~/.oh-my-zsh/custom/aliases.zsh
echo "alias dmg='git duet-merge'" >> ~/.oh-my-zsh/custom/aliases.zsh
echo "alias drb=\"git rebase -i --exec 'git duet-commit --amend --reset-author'\"" >> ~/.oh-my-zsh/custom/aliases.zsh
