#
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
# Export nvm completion settings for lukechilds/zsh-nvm plugin
# Note: This must be exported before the plugin is bundled
#
export NVM_DIR=${HOME}/.nvm
export NVM_COMPLETION=true

#
# use nix
#
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi

#
# source antidote
#
source ~/.nix-profile/share/antidote/antidote.zsh

#
# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
#
antidote load

#
# source plugins
#
source ~/.zsh_plugins.sh

#
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#
# When using Powerlevel10K fonts, console output during zsh initialization may indicate issues.
#   - we can either set the following to quite or off to turn off the above warning
#   - quiet: zsh will start quickly, but prompt will jump down after initialization
#   - off: zsh will start slowly
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
