# HyprArch

---

## Prerequisites
**Minimal Arch Linux Installation**

---

## Installation
The following packages are required for the full setup:

1. **GRUB** (boot loader)
2. **SDDM** (display manager)
3. **hyprland** (window manager)
   - **grim**: for screenshots
   - **slurp**: for screen region selection
4. **hyprpaper** (wallpaper management)
5. **hypridle** (idle management)
6. **hyprlock** (lock screen)
7. **waybar** (status bar)
   - **pavucontrol**: for audio management
   - **blueman**: for bluetooth management
8. **wlogout** (logout menu)
9. **kitty** (terminal emulator)
10. **zsh** (shell)
    - **oh-my-zsh**: zsh framework
11. **dolphin** (file manager)
12. **firefox** (browser)
13. **code** (code editor)
14. **spotify** (music streaming)
15. **discord** (communication)

Install these packages using your preferred method (e.g. `pacman` or `yay`).

---

## Customization
Make sure to copy and paste the config files of this repo to the corresponding directories mentioned below.

### 1. GRUB
- **main configuration**: `/etc/default/grub`
- **windows 11 dual boot settings**: `/etc/grub.d/40_custom`
- **GRUB theme**: `/boot/grub/themes/retroboot`

After modifying GRUB configurations, update GRUB with:
```
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo grub-mkconfig -o /boot/EFI/arch/grub.cfg
```

### 2. SDDM
- **main configuration**: `/etc/sddm.conf.d/default.conf`
- **SDDM theme**: `/usr/share/sddm/themes/sugar-candy`

### 3. hyprland
- **main configuration**: `~/.config/hypr/hyprland.conf`

### 4. hyprpaper
- **main configuration**: `~/.config/hypr/hyprpaper.conf`

### 5. hypridle
- **main configuration**: `~/.config/hypr/hypridle.conf`

### 6. hyprlock
- **main configuration**: `~/.config/hypr/hyprlock.conf`

### 7. waybar
- **main configuration**: `~/.config/waybar/config.jsonc`
- **styling configuration**: `~/.config/waybar/style.css`

### 8. wlogout
- **main configuration**: `~/.config/wlogout/layout`
- **styling configuration**: `~/.config/wlogout/style.css`

### 9. kitty
- **main configuration**: `~/.config/kitty/kitty.conf`
- **kitty theme**: `~/.config/kitty/theme.conf`

### 10. zsh
- **main configuration**: `~/.zshrc`

### 11. dolphin

### 12. firefox

### 13. code
- **start flags**: `~/code-flags.conf`

### 14. spotify
- **start flags**: `~/spotify-flags.conf`

### 15. discord
- **start flags**: `discord --enable-features=UseOzonePlatform --ozone-platform-hint=wayland`

---

## Links
**Arch Linux**:
- https://wiki.archlinux.org/title/Installation_guide

**GRUB**:
- https://www.gnu.org/software/grub/manual/grub/grub.html
- https://wiki.archlinux.org/title/GRUB

**SDDM**:
- https://github.com/sddm/sddm
- https://wiki.archlinux.org/title/SDDM

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

**zsh**
- https://zsh.sourceforge.io/Doc/Release/zsh_toc.html
- https://github.com/ohmyzsh/ohmyzsh
- https://wiki.archlinux.org/title/Zsh

**dolphin**
- https://apps.kde.org/dolphin
- https://github.com/KDE/dolphin
- https://wiki.archlinux.org/title/Dolphin
