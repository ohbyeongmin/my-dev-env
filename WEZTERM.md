# Wezterm

### Nerd font

```bash
brew install font-meslo-lg-nerd-font
```

### Wezterm configuration

```bash
.wezterm.lua
```

### Powerlevel10k theme
```bash
brew install powerlevel10k
```

```bash
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
```

```bash
source ~/.zshrc
```

### zsh-autosuggestions plugin

```bash
brew install zsh-autosuggestions
```

```bash
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
```

```bash
source ~/.zshrc
```

### zsh-syntax-highlighting

```bash
brew install zsh-syntax-highlighting
```

```bash
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
```

```bash
source ~/.zshrc
```

### Better zsh history completion

```bash
# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
```

```bash
# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
```

```bash
# ---- Eza (better ls) -----

alias ls="eza --icons=always"
```

```bash
# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

alias cd="z"
```

### tmux

```bash
brew install tmux
```

```bash
curl https://raw.githubusercontent.com/josean-dev/dev-environment-files/main/.tmux.conf --output ~/.tmux.conf
```

Install tpm
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

```bash
tmux source ~/.tmux.conf
```

```bash
brew install bash
```
