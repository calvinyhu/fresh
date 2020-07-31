# Update system packages
sudo apt update
sudo apt upgrade
sudo apt autoremove

# Install commonly used developer tools
sudo apt install build-essential

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# Add brew to PATH
echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/chu/.profile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Install bash aliases
cat bash_aliases > ~/.bash_aliases
source ~/.bash_aliases
