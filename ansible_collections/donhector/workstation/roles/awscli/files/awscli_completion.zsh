autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C "$(which aws_completer)" aws
