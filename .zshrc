# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git dotenv bundler)

source $ZSH/oh-my-zsh.sh

# User configuration

source $HOME/.macosdefaults.sh

# load sensitive credentials from a local file
source $HOME/.credentials

# languages
# source /usr/local/opt/chruby/share/chruby/chruby.sh
# source /usr/local/opt/chruby/share/chruby/auto.sh

# . /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
# . /usr/local/opt/asdf/asdf.sh

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NODE_OPTIONS="--max-old-space-size=8192"

# thefuck shell plugin
eval $(thefuck --alias)

# stop homebrew auto-updating all the time
export HOMEBREW_NO_AUTO_UPDATE=1

# this should probably be the last line
export path

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
