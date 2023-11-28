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
brew install --cask spectacle
brew install --cask spotify
brew install --cask telegram
brew install --cask visual-studio-code


# ------- nvm -------
echo "Installing nvm... 👨🏻‍🔧"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash


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


# ------- VS Code -------
echo "Installing VS Code extensions... 👨‍💻"
code --install-extension dbaeumer.vscode-eslint
code --install-extension github.copilot
code --install-extension github.copilot-chat
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension steoates.autoimport
code --install-extension naumovs.color-highlight
code --install-extension wallabyjs.console-ninja
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-ceintl.vscode-language-pack-fr
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension carbonid1.emmet-jss
code --install-extension usernamehw.errorlens
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension eamodio.gitlens
code --install-extension hashicorp.terraform
code --install-extension heybourn.headwind
code --install-extension sburg.vscode-javascript-booster
code --install-extension ritwickdey.liveserver
code --install-extension bierner.markdown-preview-github-styles
code --install-extension pkief.material-icon-theme
code --install-extension moserjose.mosmmy-icons-vscode
code --install-extension cweijan.vscode-mysql-client2
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension esbenp.prettier-vscode
code --install-extension urbantrout.refactor-css
code --install-extension humao.rest-client
code --install-extension hex-ci.stylelint-plus
code --install-extension bradlc.vscode-tailwindcss
code --install-extension meganrogge.template-string-converter
code --install-extension rangav.vscode-thunder-client
code --install-extension planbcoding.vscode-react-refactor
code --install-extension shyykoserhiy.vscode-spotify
code --install-extension mikestead.dotenv
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension tombonnike.vscode-status-bar-format-toggle


echo "Done! 🎉"
