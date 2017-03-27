alias glc="git log --graph --oneline --decorate"
alias gitclean='git checkout master; git remote prune origin; git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d'
alias gg='git grep'
alias we='curl wttr.in'

# no global aliases after this line
