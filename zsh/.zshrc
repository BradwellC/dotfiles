printf '\33c\e[3J'

# This is for macOS
if [[ -f "/opt/homebrew/bin/brew" ]] then
  # If you're using macOS, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Add Homebrew's executable directory to the front of the PATH
export PATH="/opt/homebrew/bin:$PATH"

# NPM & Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# antigen path when using Homebrew:
source $(brew --prefix)/share/antigen/antigen.zsh

# if you installed antigen using curl:
# source /path-to-antigen/antigen.zsh

# Load the oh-my-zsh's library.
# antigen use oh-my-posh

# load plugins
antigen bundle git
antigen bundle node
antigen bundle npm
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zdharma-continuum/fast-syntax-highlighting
antigen bundle djui/alias-tips
antigen bundle MichaelAquilina/zsh-you-should-use
antigen bundle MichaelAquilina/zsh-auto-notify

# Load the theme.


# Tell Antigen that you're done
antigen apply

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# zsh History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# # Completion Styling
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# zstyle ':completion:*' menu no
# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
# zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias c='clear'
alias start='npm start'
alias build='npm run build'
alias run='npm run'
alias sass-dev='npm run dev'
alias prod='npm run sass-prod'
alias sass='npm run sass-dev'
alias react='npx create-react-app'
alias o='open .'
alias back='cd ..'
alias reload='source ~/.zshrc'

alias ls='eza $eza_params'
alias l='eza --git-ignore $eza_params'
alias ll='eza --all --header --long $eza_params'
alias llm='eza --all --header --long --sort=modified $eza_params'
alias la='eza -lbhHigUmuSa'
alias lx='eza -lbhHigUmuSa@'
alias lt='eza --tree $eza_params'
alias tree='eza --tree $eza_params'

# Shell Integration
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
# eval "$(starship init zsh)"

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/emodipt-extend.omp.json')" 
  # eval "$(oh-my-posh init zsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/powerlevel10k_lean.omp.json')"
  # eval "$(oh-my-posh init zsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/tokyonight_storm.omp.json')" 
fi
