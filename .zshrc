# zmodload zsh/zprof

if [ -n "${ZSH_DEBUGRC+1}" ]; then
    zmodload zsh/zprof
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="risto"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time


# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

export NVM_LAZY_LOAD=true
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export EDITOR=nvim

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  zsh-nvm
  zsh-autosuggestions
  aws
  git
  macos
  docker
  docker-compose
  yarn
  npm
  node
  thefuck
  cp
  brew
  nx-completion
  zoxide
  pnpm-shell-completion
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# LONG_PROMPT="%{$fg[green]%}%n@%m:%{$fg_bold[blue]%}%3~ $(git_prompt_info)%{$reset_color%}"$'\n'"%(!.#.$) "
# SHORT_PROMPT="%{$fg[green]%}%n@:%{$fg_bold[blue]%}%1~ %{$reset_color%}"$'\n'"%(!.#.$) "

alias nats-dev="nats --context=dev"
alias nats-stage="nats --context=stage"
alias nats-prod="nats --context=prod"
alias nats-local="nats --context=local"
alias cd="z"
alias oh="open ."
alias o="open"
alias prev="open -a Preview "
alias cod="code -n ."
alias ds="du -hs * .* | sort -h"
alias sl="ssh-login"
alias atc="/opt/homebrew/Cellar/bsdgames-osx/2.19.4/bin/atc"
alias vim="nvim"
alias n22="sed -i '' 's/\"node\": \"18.16.0\"/\"node\": \"22.2.0\"/g' package.json && nvm use 22.2.0"
alias n20="sed -i '' 's/\"node\": \"18.16.0\"/\"node\": \"20.10.0\"/g' package.json && nvm use 20.10.0"
alias n18="sed -i '' 's/\"node\": \"20.10.0\"/\"node\": \"18.16.0\"/g' package.json && nvm use 18.16.0"
alias lg="lazygit"
alias editz="vim ~/.zshrc"
alias rst="exec zsh"
alias drygitprune='git checkout -q master && git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base master $branch) && [[ $(git cherry master $(git commit-tree $(git rev-parse "$branch^{tree}") -p $mergeBase -m _)) == "-"* ]] && echo "$branch is merged into master and can be deleted"; done'
alias gitprune='git checkout -q master && git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base master $branch) && [[ $(git cherry master $(git commit-tree $(git rev-parse "$branch^{tree}") -p $mergeBase -m _)) == "-"* ]] && git branch -D $branch; done'
alias tmx='tmux attach -t $(tmux list-sessions -F "#{session_name}" | fzf)'
alias vpn='echo 123 | totp-cli generate Work jakub.vymola@vpn.dpd.cz | pbcopy ; /Applications/OpenVPN\ Connect.app/Contents/MacOS/OpenVPN\ Connect'
alias aws_dev='source ~/.config/aws_accounts/dev.sh'
alias aws_stage='source ~/.config/aws_accounts/stage.sh'
alias aws_prod='source ~/.config/aws_accounts/prod.sh'
alias aws_reset='source ~/.config/aws_accounts/reset.sh'
alias ll="ls -lhAF"
alias ssh-login="ssh-add ~/.ssh/id_rsa"

if [ -x "$(command -v init_crrr)" ]; then
  source init_crrr
fi

export ITERM2_SQUELCH_MARK=1

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export FLYCTL_INSTALL="/Users/jakub/.fly"
export PATH="/Applications/FlightGear.app/Contents/MacOS:$HOME/.npm/bin:$PATH"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

setopt HIST_IGNORE_ALL_DUPS

eval "$(zoxide init zsh)"
eval "$(pyenv init -)"
autoload -Uz compinit && compinit -l

unsetopt inc_append_history
unsetopt share_history

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config '/Users/jakub/.oh-my-posh/themes/tiwahu-v2.omp.json')"
fi


# pnpm
# export PNPM_HOME="/Users/jakub/Library/pnpm"
# case ":$PATH:" in
#   *":$PNPM_HOME:"*) ;;
#   *) export PATH="$PNPM_HOME:$PATH" ;;
# esac
# pnpm end

export PATH="/opt/homebrew/Cellar/libpq/17.2/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

if [ -n "${ZSH_DEBUGRC+1}" ]; then
    zprof
fi

set -o vi
bindkey -M viins '^E' autosuggest-accept

builtin source "${GHOSTTY_RESOURCES_DIR}/shell-integration/zsh/ghostty-integration"


alias config='/usr/bin/git --git-dir=${HOME}/.cfg/ --work-tree=${HOME}'

