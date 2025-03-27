
sudo apt-get update
sudo apt-get install git zsh curl wget stow fzf direnv -y

echo "stowing"

if [ -d ~/dotfiles];
then
  cd ~/dotfiles
  stow .
  cd ~
else
  cd ~/.config/coderv2/dotfiles
  stow .
  cd ~
fi

echo "use zsh"
chsh -s $(which zsh)
zsh

echo "install omz"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | zsh

