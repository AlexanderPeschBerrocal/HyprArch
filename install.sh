#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

echo "Starting HyprArch installation..."

# Step 1: Update System Packages
echo "Updating system packages..."
sudo pacman -Syu --noconfirm

# Step 2: Install Official Packages
echo "Installing official packages..."
sudo pacman -S --noconfirm \
    ttf-jetbrains-mono-nerd ttf-font-awesome grub sddm \
    qt5_graphicaleffects qt5_quickcontrols2 qt5_svg hyprland grim slurp \
    hyprpaper hypridle hyprlock waybar pavucontrol blueman kitty zsh \
    dolphin firefox code discord git base-devel \
    nano neofetch

# Step 3: Install yay (AUR Helper)
echo "Installing yay if not already installed..."
if ! command -v yay &> /dev/null; then
    echo "yay not found. Installing yay..."
    cd ~
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
else
    echo "yay is already installed."
fi

# Step 4: Install AUR Packages
echo "Installing AUR packages..."
yay -S --noconfirm \
    bibata-cursor-theme-bin wlogout oh-my-zsh-git spotify

# Step 5: Configure Installed Packages
# Enable SDDM
echo "Enabling SDDM display manager..."
sudo systemctl enable sddm

# Switch Shell to Zsh
echo "Switching default shell to zsh..."
chsh -s $(which zsh)

# Step 6: Clone HyprArch Repository
echo "Cloning HyprArch repository..."
cd ~
if [ -d "HyprArch" ]; then
    echo "HyprArch directory already exists. Pulling latest changes..."
    cd HyprArch && git pull
else
    git clone https://github.com/AlexanderPeschBerrocal/HyprArch.git
fi

# Step 7: Apply Configuration Files
CONFIG_REPO=~/HyprArch
echo "Applying configuration files from $CONFIG_REPO..."

# Configure .config
echo "Copying .config files..."
cp -r $CONFIG_REPO/configs/.config/* ~/.config/

# Configure GRUB
echo "Copying GRUB files..."
sudo cp $CONFIG_REPO/configs/GRUB/grub /etc/default/
sudo cp -r $CONFIG_REPO/configs/GRUB/Elegant-wave-blur-left-dark /boot/grub/themes/
sudo grub-mkconfig -o /boot/grub/grub.cfg
#sudo mkdir /boot/EFI/arch
#sudo grub-mkconfig -o /boot/EFI/arch/grub.cfg

# Configure SDDM
echo "Copying SDDM files..."
sudo cp $CONFIG_REPO/configs/SDDM/default.conf /etc/sddm.conf.d/
sudo cp -r $CONFIG_REPO/configs/SDDM/sugar-candy /usr/share/sddm/themes/

# Configure zsh
echo "Copying zsh files..."
sudo cp $CONFIG_REPO/configs/.zshrc ~/

# Reminder for manual adjustments
echo "Manual configuration may still be needed for screen resolution, keyboard layout, etc."

# Step 8: Completion
echo "Installation complete! Please reboot your system for the changes to take effect."
