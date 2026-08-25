# ~/.zshrc: executed by zsh for non-login shells.
# Many of these are adapted from Pop!_OS

## Lines configured by zsh-newuser-install
HISTFILE="$XDG_CACHE_HOME/zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt beep nomatch
unsetopt autocd extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install

## Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh

## Bindings, keyboard behavior
# Thanks to https://www.reddit.com/r/zsh/comments/eblqvq/comment/fb7337q/
autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# If NumLock is off, translate keys to make them appear the same as with NumLock on.
bindkey -s '^[OM' '^M'  # enter
bindkey -s '^[Ok' '+'
bindkey -s '^[Om' '-'
bindkey -s '^[Oj' '*'
bindkey -s '^[Oo' '/'
bindkey -s '^[OX' '='

# If someone switches our terminal to application mode (smkx), translate keys to make
# them appear the same as in raw mode (rmkx).
bindkey -s '^[OH' '^[[H'  # home
bindkey -s '^[OF' '^[[F'  # end
bindkey -s '^[OA' '^[[A'  # up
bindkey -s '^[OB' '^[[B'  # down
bindkey -s '^[OD' '^[[D'  # left
bindkey -s '^[OC' '^[[C'  # right

# TTY sends different key codes. Translate them to regular.
bindkey -s '^[[1~' '^[[H'  # home
bindkey -s '^[[4~' '^[[F'  # end

bindkey '^?'      backward-delete-char          # bs         delete one char backward
bindkey '^[[3~'   delete-char                   # delete     delete one char forward
bindkey '^[[H'    beginning-of-line             # home       go to the beginning of line
bindkey '^[[F'    end-of-line                   # end        go to the end of line
bindkey '^[[1;5C' forward-word                  # ctrl+right go forward one word
bindkey '^[[1;5D' backward-word                 # ctrl+left  go backward one word
bindkey '^H'      backward-kill-word            # ctrl+bs    delete previous word
bindkey '^[[3;5~' kill-word                     # ctrl+del   delete next word
bindkey '^J'      backward-kill-line            # ctrl+j     delete everything before cursor
bindkey '^[[D'    backward-char                 # left       move cursor one char backward
bindkey '^[[C'    forward-char                  # right      move cursor one char forward
bindkey '^[[A'    up-line-or-beginning-search   # up         prev command in history
bindkey '^[[B'    down-line-or-beginning-search # down       next command in history

# Ctrl-X then Ctrl-E to edit current command in text editor
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

## History
# No duplicate lines or those starting with a space in the history
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

# Other history settings
HISTDUP=erase
setopt append_history
setopt share_history

## Prompt
setopt prompt_subst

# Color palette
prompt_color_1="%F{165}"
prompt_color_2="%F{171}"
prompt_color_3="%F{213}"
prompt_color_4="%F{219}"
prompt_color_5="%F{225}"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# vcs info (Git, etc.)
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )

# Shell environment items
# Python venv
export VIRTUAL_ENV_DISABLE_PROMPT="1"
venv_prompt() { [[ -n "$VIRTUAL_ENV" ]] && echo "[venv: ${VIRTUAL_ENV:t}] " }
nix_shell_prompt() { [[ -n "$IN_NIX_SHELL" ]] && echo "[nix-shell: $IN_NIX_SHELL] " }
env_prompt_list=(nix_shell_prompt venv_prompt)
env_prompt() { for func in $env_prompt_list; do $func; done}

if [ "$color_prompt" = yes ]; then
    PROMPT='%B${prompt_color_1}%n${prompt_color_2}@${prompt_color_3}%m%f%b ${prompt_color_1}$(env_prompt)${prompt_color_4}%~%f %B${prompt_color_5}${vcs_info_msg_0_}%k
%B${prompt_color_3}%(!.#.>)%f%b '
else
    PROMPT='%n@%m %~ $(env_prompt)${vcs_info_msg_0_}
%(!.#.>) '
fi
unset color_prompt force_color_prompt

# Extra newline before prompt
precmd() { print "" }

# Shrink prompt after pressing enter
shrink-prompt-accept-line() {
    local old_prompt="$PROMPT"
    PROMPT='${prompt_color_3}>%f '
    zle reset-prompt
    PROMPT="$old_prompt"
    zle accept-line
}
zle -N shrink-prompt-accept-line
bindkey "^M" shrink-prompt-accept-line

## Colors (non-prompt)
# Colors for less
export LESS="-R"

# Colors for man pages
export MANPAGER="less -R --use-color -Dd+r -Du+b"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

## Set xterm titles
autoload -Uz add-zsh-hook

function xterm_title_precmd () {
    print -Pn -- '\e]2;%n@%m: %~\a'
    [[ "$TERM" == 'screen'* ]] && print -Pn -- '\e_\005{2}%n\005{-}@\005{5}%m\005{-}: \005{+b 4}%~\005{-}\e\\'
}

function xterm_title_preexec () {
    print -Pn -- '\e]2;%n@%m: %~ %# ' && print -n -- "${(q)1}\a"
    [[ "$TERM" == 'screen'* ]] && { print -Pn -- '\e_\005{2}%n\005{-}@\005{5}%m\005{-}: \005{+b 4}%~\005{-} %# ' && print -n -- "${(q)1}\e\\"; }
}

if [[ "$TERM" == (Eterm*|alacritty*|aterm*|foot*|gnome*|konsole*|kterm*|putty*|rxvt*|screen*|wezterm*|tmux*|xterm*) ]]; then
    add-zsh-hook -Uz precmd xterm_title_precmd
    add-zsh-hook -Uz preexec xterm_title_preexec
fi

## More functionality
# Always exit with 0
exitzero() {
  exit 0
}
add-zsh-hook zshexit exitzero

# Print exit codes
setopt print_exit_value

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

## Auto-completion
# Use fzf
eval "$(fzf --zsh)"
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Better SSH/Rsync/SCP Autocomplete
zstyle ':completion:*:(scp|rsync):*' tag-order ' hosts:-ipaddr:ip\ address hosts:-host:host files'
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-host' ignored-patterns '*(.|:)*' loopback ip6-loopback localhost ip6-localhost broadcasthost
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-ipaddr' ignored-patterns '^(<->.<->.<->.<->|(|::)([[:xdigit:].]##:(#c,2))##(|%*))' '127.0.0.<->' '255.255.255.255' '::1' 'fe80::*'

# Git
zstyle ':vcs_info:git:*' formats '%b'

# Case-insensitivity
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Completion styling
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Set up compinit
zstyle :compinstall filename '/home/hihacks/.zshrc'
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/.zcompdump"

## Variables for other programs
# Assuming other variables are declared in .zshenv
export ANSIBLE_SHELL_USE_HOST_NIX="true"

## Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(fc -ln -1 | sed -e '\''s/^\s*//;s/[;&|]\s*alert$//'\'')"'

alias update="paru -Syu --sudoloop && flatpak update"
alias update-config="(cd \"$CONFIG_DIR\" && git pull && stow -t ~ dotfiles)"
alias update-reflector="sudo systemctl restart reflector.service"
alias ncdu-root="sudo ncdu / -x"
alias ncdu-home="sudo ncdu /home -x"

## Final commands
# Start keychain (remember SSH passphrases)
# KEYCHAIN_KEYS should be an array
eval $(keychain --eval --quiet --noask $KEYCHAIN_KEYS) # Using --confallhosts makes keychain unable to find their locations

# Hyfetch :3
hyfetch
