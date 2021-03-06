# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/qwertystop/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
setopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
#
# Additional style stuff
autoload -U colors vcs_info
colors

zstyle ':vcs_info:*' stagedstr '%F{green}●%f '
zstyle ':vcs_info:*' unstagedstr '%F{yellow}●%f '
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git*' formats "%F{blue}%b%f %u%c"

_setup_ps1() {
  vcs_info
  GLYPH="▲"
  # Vi insert mode or vi normal mode
  [ "x$KEYMAP" = "xvicmd" ] && GLYPH="▼"
  # Red or blue depending on success of prior command
  GLYPHPROMPT="%(?.%F{blue}.%F{red})$GLYPH%f"
  # Truncate three or more directories to last two
  # (strict length rather than dir count also an option)
  DIRPROMPT="%F{blue}%(3~|…/%2~|%~)%f"
  # Not sure what the other two bits do, haven't seen them turn up.
  PS1="$GLYPHPROMPT %(1j.%F{cyan}[%j]%f .)$DIRPROMPT %(!.%F{red}#%f .)"
  PYVER="$(pyenv version-name)"
  if [[ "$PYVER" != "system" ]]; then
    PS1="($PYVER) $PS1"
  fi
  RPROMPT="$vcs_info_msg_0_"
}
_setup_ps1

# Vi mode
zle-keymap-select () {
 _setup_ps1
  zle reset-prompt
}
zle -N zle-keymap-select
zle-line-init () {
  zle -K viins
}
zle -N zle-line-init


bindkey '^R' history-incremental-search-backward

eval $(keychain --eval --quiet id_ed25519 --noask)

export PATH="$HOME/.local/bin:$HOME/.poetry/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
eval $(thefuck --alias ff)
