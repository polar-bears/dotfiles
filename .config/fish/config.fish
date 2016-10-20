# load enhancd
. .config/fisherman/enhancd/fish/enhancd.fish


# aliases
alias master 'git checkout master'


# functions
function fish_user_key_bindings
  bind \cg peco_select_ghq_repository
  bind \cr peco_select_history
end

function peco
  command peco --layout=bottom-up $argv
end

