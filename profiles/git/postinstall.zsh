git config --global pager.branch false
git config --global alias.st status
git config --global alias.br branch
git config --global alias.co checkout
git config --global alias.l  'log --graph --abbrev-commit --decorate'
git config --global alias.fa 'fetch --all -p'
git config --global alias.ci '!MESSAGE=$(git rev-parse --abbrev-ref HEAD | sed "s/-/ /2g") && git commit -e -m "$MESSAGE"'
git config --global alias.pushup '!BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD) && git push -u origin $BRANCH_NAME'
git config --global alias.pr 'commit -e -m "PR fix"'
git config --global alias.prs 'commit -e -m "PR fixes"'
