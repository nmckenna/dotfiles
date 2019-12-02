# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

brew cask install iterm2

# Install Powerline Fonts
mkdir temp-fonts
cd temp-fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ../..
rm -rf temp-fonts

# Install zsh
cd ~
brew install zsh

# Create a `.zsh` directory to store plugins in one place
mkdir ~/.zsh

# Install starship prompt
brew install starship
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
source ~/.zshrc

# Enable 'fast-syntax-highlighting' plugin in ZSH
cd ~/.zsh && git clone git@github.com:zdharma/fast-syntax-highlighting.git

echo "source $HOME/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" >> ~/.zshrc

# Reload ZSH
source ~/.zshrc

# Change default login shell to use zsh
chsh -s /bin/zsh




