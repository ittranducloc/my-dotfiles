CURRENT_PATH=$(pwd)
# update oh-my-zsh
# omz update

echo 'update external plugins'
cd "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
git pull
cd "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-completions"
git pull
cd "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
git pull

echo 'update powerlevel10k theme'
cd "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git pull

echo 'update spaceship theme'
cd "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt"
git pull

cd "$CURRENT_PATH"
