# HyprArch
HyprArch is a personalized configuration repository for setting up a lightweight, functional and visually appealing Arch Linux desktop environment using the Hyprland window manager.

---

## Features
- **Custom Fonts**
- **Custom Cursor Themes**
- **GRUB**: Boot loader
- **SDDM**: Display manager
- **Hyprland**: Window manager
- **Grim**: Screenshot tool
- **Slurp**: Screen region selection for screenshots
- **Hyprpaper**: Wallpaper manager
- **Hypridle**: Idle manager
- **Hyprlock**: Lock screen
- **Waybar**: Statur bar
- **Pavucontrol**: Audio management
- **Blueman**: Bluetooth management
- **Wlogout**: Logout menu
- **Kitty**: Terminal emulator
- **Zsh**: Shell
- **Oh-My-Zsh**: Zsh framework
- **Dolphin**: File manager
- **Firefox**: Browser
- **Code**: Code editor
- **Spotify**: Music streaming
- **Discord**: Communication

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

## Disclamer
All important links and resources can be found at the bottom of this page.

---

## Prerequisites
Before proceeding with the installation, make sure you have:
- A minimal Arch Linux installation
- Basic knowledge of Arch Linux

---

## Installation

### Step 1: Install Required Packages
You will need the following packages. Use `pacman` for official packages and an AUR helper like `yay` for AUR packages.

```
sudo pacman -S ttf-jetbrains-mono-nerd ttf-font-awesome grub sddm hyprland grim slurp hyprpaper hypridle hyprlock waybar pavucontrol blueman kitty zsh dolphin firefox code discord git
```

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
Move the provided configuration files to their appropriate directories. Make sure to replace already existing configuration files if necessary.

Example:
```
sudo cp -r ~/HyprArch/configs/.config/hypr ~/.config/
```

### Step 5: (Optional) Make Changes

#### 1. GRUB
- **main configuration**: `/etc/default/grub`
- **windows 11 dual boot settings**: `/etc/grub.d/40_custom`
- **GRUB theme**: `/boot/grub/themes/retroboot`

After modifying GRUB configurations, update GRUB with:
```
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo grub-mkconfig -o /boot/EFI/arch/grub.cfg
```

#### 2. SDDM
- **main configuration**: `/etc/sddm.conf.d/default.conf`
- **SDDM theme**: `/usr/share/sddm/themes/sugar-candy`

#### 3. hyprland
- **main configuration**: `~/.config/hypr/hyprland.conf`

#### 4. hyprpaper
- **main configuration**: `~/.config/hypr/hyprpaper.conf`

#### 5. hypridle
- **main configuration**: `~/.config/hypr/hypridle.conf`

#### 6. hyprlock
- **main configuration**: `~/.config/hypr/hyprlock.conf`

#### 7. waybar
- **main configuration**: `~/.config/waybar/config.jsonc`
- **styling configuration**: `~/.config/waybar/style.css`

#### 8. wlogout
- **main configuration**: `~/.config/wlogout/layout`
- **styling configuration**: `~/.config/wlogout/style.css`

#### 9. kitty
- **main configuration**: `~/.config/kitty/kitty.conf`
- **kitty theme**: `~/.config/kitty/theme.conf`

#### 10. zsh
- **main configuration**: `~/.zshrc`

#### 11. dolphin

#### 12. firefox

#### 13. code
- **start flags**: `~/code-flags.conf`

#### 14. spotify
- **start flags**: `~/spotify-flags.conf`

#### 15. discord
- **start flags**: `discord --enable-features=UseOzonePlatform --ozone-platform-hint=wayland`

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
