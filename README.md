# Prerequisites

## Tools 

```bash
brew install tmux fzf neovim jandedobbeleer/oh-my-posh/oh-my-posh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install `atuin` and log into it.

## Other

Use `ghostty` as terminal emulator (dotfiles contain config for it). Install `catppuccin` theme for ghostty, if not yet installed.

Install `JetBrainsMono Nerd Font`.

# Clone dotfiles

Tutorial: https://www.atlassian.com/git/tutorials/dotfiles

```bash
echo ".cfg" >> .gitignore
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

git clone --bare <git-repo-url> $HOME/.cfg
config checkout # NOTE: this might error out. If you know what you are doing, you can just delete conflicting files/directories

config config --local status.showUntrackedFiles no

config submodule update --init
```

# Run

Open `tmux`. Pres `<Ctrl>-A` (prefix), then `I` (capital i). This should install all plugins for tmux.

Close all tmux tabs (by pressing `<Ctrl>-D` multiple times), this kills tmux session. Then start `tmux` again.

Open `nvim`, wait for Lazy to install all plugins.

# MISC

Populate `.gemini-key-local` for nvim's CodeCompanion to work.

Use `.zshrc-local` for machine-specifig config.
