# Git Aliases
git config --global alias.a 'add'
git config --global alias.last 'log -1 --stat'
git config --global alias.cp 'cherry-pick'
git config --global alias.st 'status -sb'
git config --global alias.co 'checkout'
git config --global alias.cob 'checkout -b'
git config --global alias.col 'checkout @{-1}'
git config --global alias.com 'checkout master'
git config --global alias.cl 'clone'
git config --global alias.ci 'commit'
git config --global alias.cia 'commit -a'
git config --global alias.cim 'commit -m'
git config --global alias.ciam 'commit -am'
git config --global alias.br 'branch'
git config --global alias.unstage 'reset HEAD --'
git config --global alias.boom 'reset --hard HEAD'
git config --global alias.dc 'diff --cached'
git config --global alias.lg 'log --graph --pretty=format:'"'"'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset'"'"' --abbrev-commit --date=relative --all'
git config --global alias.pl 'pull'
git config --global alias.ps 'push'
git config --global alias.uncommmit 'reset --soft HEAD^'
git config --global alias.likenew '!git clean -fdx && git reset HEAD --'
git config --global alias.forget 'checkout --'
git config --global alias.radd '!git rm -r --cached . && git add .'
git config --global alias.up '!git checkout master && git fetch && git pull && git checkout @{-1} && git merge master'

git config --global alias.sup 'submodule update --init --recursive'
git config --global alias.coz '!f(){ git checkout "$@" && git submodule update --init --recursive; }; f'
git config --global alias.colz '!git checkout @{-1} && git submodule update --init --recursive'
git config --global alias.comz '!git checkout master && git submodule update --init --recursive'
git config --global alias.plz '!git pull && git submodule update --init --recursive'

