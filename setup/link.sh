#!/usr/bin/bash

# absolute path of working directory
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# link bashrc, zsh and aliases
rm -rf "$HOME"/.zshrc
ln -s "$DOTFILES"/ishell/.zshrc "$HOME"/.zshrc
rm -rf "$HOME"/.bashrc
ln -s "$DOTFILES"/ishell/.bashrc "$HOME"/.bashrc
rm -rf "$HOME"/.aliases
ln -s "$DOTFILES"/ishell/.aliases "$HOME"/.aliases

# link startship
rm -rf "$HOME"/.config/starship.toml
ln -s "$DOTFILES"/config/starship/starship.toml "$HOME"/.config/starship.toml

# link mycli
rm -rf "$HOME"/.myclirc
ln -s "$DOTFILES"/config/mycli/.myclirc "$HOME"/.myclirc

# link keyd
sudo rm -rf /etc/keyd/default.conf
sudo ln -s "$DOTFILES"/config/keyd/default.conf /etc/keyd/default.conf

# link in .config folders
link_config() {
    rm -rf "$HOME"/.config/"$1"
    ln -s "$DOTFILES"/config/"$1" "$HOME"/.config/"$1"
}

for item in kitty tmux nvim cht.sh mnm phpactor; do
    link_config "$item"
done

# link scripts
scripts_path="$HOME"/.local/bin/toolbox/
mkdir -p "$scripts_path"

link_script() {
    rm -rf "$scripts_path""$1"
    ln -s "$DOTFILES"/toolbox/"$1" "$scripts_path""$1"
}

for script in toolbox/*; do
    link_script "$(echo "$script" | cut -d'/' -f2)"
done
