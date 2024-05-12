# Daniel's `.dotfiles`


**Hi! ( ͡° ͜ʖ ͡°)**

**I'm Daniel and I'm passionate about creating network services and network technologies. In short, I'm a Homelab nerd.**

This Repository Dotfiles contain my personal config files. Here you'll find configs, customizations, themes, and whatever I need to personalize my Ubuntu WSL2 on Windows experience.

> :warning: Be aware, products can change over time. I do my best to keep up with the latest changes and releases, but please understand that this won’t always be the case.

I created them as free resources to be used in your specific use cases.

# Setup Instructions

## Prerequisites
- A [Nerd Font](https://www.nerdfonts.com/) installed and enabled in your terminal (for example, try the [AnonymicePro Nerd Font](https://www.nerdfonts.com/font-downloads)).

## Step 1: Install ZSH
Ensure that ZSH is installed on your system.

### For Ubuntu/Debian:
```bash
sudo apt update
sudo apt install zsh
```

### For Fedora:
```bash
sudo dnf install zsh
```

### For macOS:
```bash
brew install zsh
```

## Step 2: Set ZSH as Default Shell
```bash
chsh -s $(which zsh)
```
You may need to log out and log back in for the changes to take effect.

## Step 3: Install Oh My Zsh
Install Oh My Zsh using curl:
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Step 4: Install Starship
Download and install Starship:
```bash
sh -c "$(curl -fsSL https://starship.rs/install.sh)" --yes
```

## Step 5: Install zsh-autosuggestions Plugin
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## Step 6: Install zsh-syntax-highlighting Plugin
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## Step 7.1: Configure .zshrc File
Open the configuration file `.zshrc` in an editor:
```bash
nano ~/.zshrc
```

Add configuration for Starship:
```bash
eval "$(starship init zsh)"
```

Add plugins to the list in the `.zshrc` file:
```bash
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```

Ensure that the initialization of `zsh-syntax-highlighting` plugin is at the end of the `.zshrc` file:
```bash
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

## Step 7.2: Fetch and Apply Dotfiles from My GitHub
Clone my dotfiles repository from GitHub to the /tmp directory and apply the settings:
```bash
git clone https://github.com/haooxin/.dotfiles.git /tmp/dotfiles
```
Move all .dotfiles to your home directory.

## Step 8: Reload Configuration
Apply the changes by reloading the configuration file:
```bash
source ~/.zshrc
```

## Step 9: Verification
Check if all components are working properly:
- Open the terminal and see if Starship is displaying its prompt.
- Start typing commands to see suggestions from `zsh-autosuggestions`.
- Check if the syntax is highlighted by `zsh-syntax-highlighting`.



# Contribution

As this is my personal Homelab documentation, I don't accept any contributions. But feel free to fork this repository and use it for your own documentation.
