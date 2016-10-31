source ~/.git-completion.bash

export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

# export PATH=$PATH:/opt/google-cloud-sdk/current/bin
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]% "

alias develop='git checkout develop'
alias master='git checkout master'

alias ll='ls -hl'

alias utcdate='date -u'
alias unixtime='date +%s'

alias redis='redis-server /usr/local/etc/redis.conf'


if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi


function peco-lscd {
  local dir="$( find . -maxdepth 1 -type d | sed -e 's;\./;;' | peco )"
  if [ ! -z "$dir" ]; then
    cd "$dir"
  fi
}

