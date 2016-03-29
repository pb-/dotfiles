alias glc="git log --graph --oneline --decorate"
alias gitclean='git checkout master; git remote prune origin; git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d'
alias gg='git grep'
alias ggi='git grep -i'
alias gfg='git ls-files | grep -i'
alias we='curl wttr.in'

# no global aliases after this line
alias a='cd $GOPATH/src/github.com/MEDIGO'
alias aa='cd $GOPATH/src/github.com/MEDIGO && cd'
alias dl='go run $GOPATH/src/github.com/MEDIGO/go-utils/tools/decrypt-log.go $(cat $GOPATH/src/github.com/MEDIGO/go-utils/tools/prod.key)'
alias tid='/home/pb/code/go/src/github.com/MEDIGO/scripts/env/bin/python /home/pb/code/go/src/github.com/MEDIGO/scripts/trace'
alias b='cd ..'
# t creates a fresh workspace in $HOME/tmp (old ones are archived in $HOME/.tmp)
alias t='D=$HOME/.tmp/`date -Is`; cd / && mkdir -p $D && ln -fsT $D $HOME/tmp && cd $HOME/tmp'
