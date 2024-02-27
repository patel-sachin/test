#-----------------------------------------------------
# install curl
#-----------------------------------------------------
sudo apt install curl

#-----------------------------------------------------
# install nix package manager
#-----------------------------------------------------
curl -L https://nixos.org/nix/install | sh

#-----------------------------------------------------
# source nix package manager
#-----------------------------------------------------
. ~/.nix-profile/etc/profile.d/nix.sh

#-----------------------------------------------------
# install packages from nix packages
#-----------------------------------------------------
nix-env -iA \ 
        nixpkgs.zsh \
        nixpkgs.antidote \
        nixpkgs.git \
        nixpkgs.neovim \
        nixpkgs.tmux \
        nixpkgs.stow \
        nixpkgs.fzf \
        nixpkgs.ripgrep \
        nixpkgs.bat \
        nixpkgs.python3 \
        nixpkgs.eza

#-----------------------------------------------------
# add zsh to the list of available shells
#-----------------------------------------------------
command -v zsh | sudo tee -a /etc/shells

#-----------------------------------------------------
# make zsh the default shell
#-----------------------------------------------------
sudo chsh -s $(which zsh) $USER

#
# bundle zsh plugins
#
antidote bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

