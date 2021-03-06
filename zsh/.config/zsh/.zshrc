#opt#
setopt interactive_comments
setopt auto_cd
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

#history
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

#autocomplete#
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

#load aliases#
source $ZDOTDIR/.zsh_alias

#vim edit#
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

#prompt#
autoload -U colors && colors

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '< on %b  >'

local user_host="%{$terminfo[bold]$fg[red]%}%n@%m %{$reset_color%}"
local current_dir="%{$terminfo[bold]$fg[white]%}%~ %{$reset_color%}"

setopt PROMPT_SUBST
PROMPT='╭─${user_host}${current_dir}${vcs_info_msg_0_}
╰─%B${user_symbol}%b'
PS2="%{$terminfo[bold]$fg[red]%}% >>> %{$reset_color%}"

#plugins#
source $ZDOTDIR/doas/doas.plugin.zsh
source $ZDOTDIR/zsh-completions/zsh-completions.plugin.zsh
source $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

