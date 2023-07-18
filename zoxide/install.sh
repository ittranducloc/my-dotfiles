#! /usr/bin/env zsh
ps -p $$
echo "=========Install zoxide"
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
if [ -w "$HOME/.zshrc" ]; then
	echo 'eval "$(zoxide init zsh)"' >>"$HOME/.zshrc"
	rm "$HOME/.zcompdump"
  autoload -U compinit
  compinit
fi
echo "zoxide only supports fzf v0.33.0 and above."
fzf --version
[[ $? -ne 0 ]] && exit 1

echo "Import data from previous alternatives"
[[ -r "$HOME/.z" ]] && zoxide import --from=z "$HOME/.z"
ls -l "$HOME/.local/share/zoxide"
