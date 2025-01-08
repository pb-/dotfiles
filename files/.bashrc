export PS1=${PS1#"\n"}

export PATH="$PATH:/home/pb/.python-tools/bin"
export PATH="$PATH:/home/pb/.gyg-tools"

# Created by `pipx` on 2021-07-25 12:23:21
export PATH="$PATH:/home/pb/.gyg/bin"

gnb () { git fetch origin main && git checkout -B $1 origin/main --no-track; }

touch ~/.gyg/last_dowload_check
export HISTSIZE=10000
export HISTFILESIZE=100000

alias aws-token='aws codeartifact get-authorization-token --profile production/developer --domain getyourguide --domain-owner 130607246975 --query authorizationToken --output text'
