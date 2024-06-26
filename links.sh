#!/usr/bin/env bash
echo "Installing dotfiles as symbolic links..."
DIR="$HOME/src/dotfiles"

ln -f -s "$DIR/.zshrc" "$HOME/.zshrc"
ln -f -s "$DIR/.fasdrc" "$HOME/.fasdrc"
ln -f -s "$DIR/init.vim" "$HOME/.config/nvim/init.vim"

# ln -f -s "$DIR/.vimrc" "$HOME/.vimrc"
# ln -f -s "$DIR/.gitconfig" "$HOME/.gitconfig"
# ln -f -s "$DIR/config.fish" "$HOME/.config/fish/config.fish"
