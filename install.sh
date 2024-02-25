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
        nixpkgs.direvn

#-----------------------------------------------------
# add zsh to the list of available shells
#-----------------------------------------------------
command -v zsh | sudo tee -a /etc/shells

#-----------------------------------------------------
# make zsh the default shell
#-----------------------------------------------------
sudo chsh -s $(which zsh) $USER

#-----------------------------------------------------
# Once the terminal is opened, the default shell will
# be zsh and this entry needs to be there in the 
# .zshrc for the nix-env command to work. This has 
# already been added to the .zshrc file that is committed
# in git.
#
# if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi
#-----------------------------------------------------


