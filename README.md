# HyprArch
HyprArch is a personalized configuration repository for setting up a lightweight, functional and visually appealing Arch Linux desktop environment using the Hyprland window manager.

---

## Features
- **Fonts**: Includes JetBrainsMono Nerd Font and Font Awesome for an elegant look.  
- **Cursor Themes**: Includes the Bibata Cursor Themes for a modern appearance.  
- **GRUB**: Minimal boot loader.  
- **SDDM**: A sleek display manager for login sessions.  
- **Hyprland**: A dynamic tiling Wayland compositor for powerful window management.  
- **Grim** and **Slurp**: Tools for taking and customizing screenshots.  
- **Hyprpaper**: Wallpaper manager to enhance your desktop aesthetics.  
- **Hypridle**: Idle manager for handling power-saving behaviors.  
- **Hyprlock**: Lockscreen application to secure your session.  
- **Waybar**: A feature-rich status bar for Wayland environments.  
- **Pavucontrol**: Audio management utility.  
- **Blueman**: Bluetooth management tool.  
- **Wlogout**: Provides a customizable logout menu.  
- **Kitty**: Fast and feature-rich terminal emulator.  
- **Zsh** and **Oh-My-Zsh**: Shell setup for a better terminal experience.  
- **Dolphin**: KDE file manager for seamless navigation.  
- **Firefox**: Browser for internet access.  
- **Code**: A powerful code editor.  
- **Spotify**: For music streaming.  
- **Discord**: For communication.  

---

## Showcase
<details>
  
  <summary>Click to view images</summary>
  
  ![Image 1](Pictures/screenshots/screenshot_20241120_165335.png)
  ![Image 2](Pictures/screenshots/screenshot_20241120_165354.png)
  ![Image 3](Pictures/screenshots/screenshot_20241120_165507.png)
  ![Image 4](Pictures/screenshots/screenshot_20241120_165522.png)
  ![Image 5](Pictures/screenshots/screenshot_20241120_165557.png)
  ![Image 6](Pictures/screenshots/screenshot_20241120_165601.png)
  
</details>

---

## Disclaimer
This repository is intended for personal use and may require additional tweaks to fit your specific setup. All important links and resources can be found at the bottom of this page.

---

## Prerequisites
Before proceeding with the installation, make sure you have:
- A minimal Arch Linux installation
- Basic knowledge of Arch Linux

---

## Installation

### Step 1: Install Required Packages
You will need the following packages. Use `pacman` for official packages and an AUR helper like `yay` for AUR packages.

#### Official packages
```
sudo pacman -S ttf-jetbrains-mono-nerd ttf-font-awesome grub sddm hyprland grim slurp hyprpaper hypridle hyprlock waybar pavucontrol blueman kitty zsh dolphin firefox code discord git
```

#### AUR packages
```
yay -S bibata-cursor-theme-bin wlogout oh-my-zsh spotify  
```

### Step 2: Configure Installed Packages
Set SDDM as your display manager:
```
sudo systemctl enable sddm
```

Switch your shell to zsh:
```
chsh -s $(which zsh)
```

### Step 3: Clone The Repository
Clone this repository to your home directory:
```
cd ~
git clone https://github.com/AlexanderPeschBerrocal/HyprArch.git
```

### Step 4: Apply Configuration Files  
Move the provided configuration files to their respective directories. Replace existing files if necessary. Use the following table as a reference for where to place each configuration file:

| Component          | Configuration File(s)                           | Destination Path(s)                                   |
|--------------------|-------------------------------------------------|-------------------------------------------------------|
| **GRUB**           | `grub`, `40_custom`, `retroboot`                | `/etc/default/`, `/etc/grub.d/`, `/boot/grub/themes/` |
| **SDDM**           | `default.conf`, `sugar-candy`                   | `/etc/sddm.conf.d/`, `usr/share/sddm/themes/`         |
| **Hyprland**       | `hyprland.conf`                                 | `~/.config/hypr/`                                     |
| **Hyprpaper**      | `hyprpaper.conf`                                | `~/.config/hypr/`                                     |
| **Hypridle**       | `hypridle.conf`                                 | `~/.config/hypr/`                                     |
| **Hyprlock**       | `hyprlock.conf`                                 | `~/.config/hypr/`                                     |
| **Waybar**         | `config.jsonc`, `style.css`                     | `~/.config/waybar/`                                   |
| **Wlogout**        | `layout`, `style.css`                           | `~/.config/wlogout/`                                  |
| **Kitty**          | `kitty.conf`, `theme.conf`                      | `~/.config/kitty/`                                    |
| **Zsh**            | `.zshrc`                                        | `~/`                                                  |
| **Code**           | `code-flags.conf`                               | `~/.config/`                                          |
| **Spotify**        | `spotify-flags.conf`                            | `~/.config/`                                          |

Example command to copy Hypr configurations:  
```
sudo cp -r ~/HyprArch/configs/.config/hypr ~/.config/
```

### Step 5: (Optional) Make Changes

---

## Links And Resources

**Arch Linux**:
- https://wiki.archlinux.org/title/Installation_guide

**Fonts**
- https://www.nerdfonts.com
- https://fontawesome.com

**Cursor Themes**
- https://github.com/ful1e5/Bibata_Cursor

**GRUB**:
- https://www.gnu.org/software/grub/manual/grub/grub.html
- https://wiki.archlinux.org/title/GRUB

**SDDM**:
- https://github.com/sddm/sddm
- https://wiki.archlinux.org/title/SDDM
- https://github.com/Kangie/sddm-sugar-candy

**hyprland**:
- https://wiki.hyprland.org
- https://github.com/hyprwm/Hyprland
- https://wiki.archlinux.org/title/Hyprland

**grim**:
- https://github.com/emersion/grim

**slurp**:
- https://github.com/emersion/slurp

**hyprpaper**:
- https://wiki.hyprland.org/Hypr-Ecosystem/hyprpaper

**hypridle**:
- https://wiki.hyprland.org/Hypr-Ecosystem/hypridle

**hyprlock**:
- https://wiki.hyprland.org/Hypr-Ecosystem/hyprlock

**waybar**:
- https://github.com/Alexays/Waybar

**pavucontrol**:
- https://wiki.archlinux.org/title/PulseAudio

**blueman**:
- https://wiki.archlinux.org/title/Blueman

**wlogout**
- https://github.com/ArtsyMacaw/wlogout

**kitty**
- https://sw.kovidgoyal.net/kitty
- https://github.com/kovidgoyal/kitty
- https://github.com/catppuccin/catppuccin

**zsh**
- https://zsh.sourceforge.io/Doc/Release/zsh_toc.html
- https://github.com/ohmyzsh/ohmyzsh
- https://wiki.archlinux.org/title/Zsh

**dolphin**
- https://apps.kde.org/dolphin
- https://github.com/KDE/dolphin
- https://wiki.archlinux.org/title/Dolphin
