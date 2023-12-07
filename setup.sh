# ------- SSH Key for GitHub -------
echo "Creating an SSH key for you... 🔐"
ssh-keygen -t rsa

echo "Please add this public key to Github \n"
echo "https://github.com/account/ssh \n"
read -p "Press [Enter] key after this..."


# ------- Homebrew -------
if test ! $(which brew); then
  echo "Installing homebrew... 🍺"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$user/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Update homebrew recipes
echo "Updating homebrew... 🆕"
brew update
brew upgrade


# ------- Git -------
echo "Installing Git... 📦"
brew install git
brew install gh

echo "Git config  - Enter your data and press Enter!"
echo -n 'Username: '
read username
git config --global user.name "$username"

echo -n 'Mail: '
read mail
git config --global user.email $mail


# ------- brew stuff -------
echo "Installing other brew stuff... 🍻"
brew install --cask arc
brew install --cask brave-browser
brew install --cask caffeine
brew install --cask discord
brew install --cask github
brew install --cask google-chrome
brew install --cask kindle-comic-converter
brew install --cask raycast
brew install --cask rectangle
brew install --cask spotify
brew install --cask telegram
brew install --cask visual-studio-code


# ------- nvm -------
echo "Installing nvm... 👨🏻‍🔧"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
source ~/.nvm/nvm.sh


# ------- Node -------
echo "Installing node... ✅"
nvm install node


# ------- Terminal Setup -------
echo "Setting up terminal... 🖥"
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

echo "Cleaning up brew 🧹"
brew cleanup


echo "Done! 🎉"
