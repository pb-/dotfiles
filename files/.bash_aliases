alias glc="git log --graph --oneline --decorate"
alias gitclean='git checkout master; git remote prune origin; git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d'
alias gg='git grep'
alias ggi='git grep -i'
alias gfg='git ls-files | grep -i'
alias we='curl wttr.in'
alias cat='bat -p'

alias gd='cd ~/code/go/src/github.com/pb-'

# no global aliases after this line
