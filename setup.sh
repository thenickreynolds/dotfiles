ln -ns $(pwd)/.gitconfig ~/.gitconfig
echo "source $(pwd)/.zshrc" >> ~/.zshrc

. ~/.zshrc
