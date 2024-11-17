# HyprArch

---

## Prerequisites
**Minimal Arch Linux Installation** 
- https://wiki.archlinux.org/title/Installation_guide

---

## Installation
The following packages are required for the full setup:

1. **GRUB** (bootloader)
2. **SDDM** (display manager)
3. **hyprland** (window manager)
   - **grim**: for screenshots
   - **slurp**: for screen region selection
4. **hyprpaper** (wallpaper management)
5. **hypridle** (idle management)
6. **hyprlock** (lock screen)
7. **waybar** (status bar)
   - **pavucontrol**: audio management
   - **blueman**: bluetooth management
8. **wlogout** (logout menu)
9. **kitty** (terminal)
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
