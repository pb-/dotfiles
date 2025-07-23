alias gcaan='git commit -a --amend --no-edit --reset-author'
alias gfg='git ls-files | grep -i'
alias gg='git grep'
alias ggi='git grep -i'
alias glc='git log --graph --oneline --decorate'
alias l='ls -alh'
alias ll='ls -l'
alias ls='ls --color=tty'
alias note='vim ~/n/$(date -uIns | tr -dC [:digit:] | cut -c -23)'
alias t='pushd $(mkdir -v /tmp/$(date -Is | tr -cd [:digit:]) | cut -d \'\'' -f 2)'
alias cat='bat -p'
alias mutate='kubectl gyg create job --namespace sem-google-mutation --context frankfurt3 --from configmap/job-sem-google-mutation-mutate -- --run-id pb-manual-$(gdate -u +%Y%m%d%H%M%S%N) --input-path'
export EDITOR="$(which nvim)"

alias vim=nvim
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
