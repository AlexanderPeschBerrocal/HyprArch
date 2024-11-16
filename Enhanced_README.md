
# HyprArch
**Minimal // Lightweight // Aesthetic**  

HyprArch is a carefully curated configuration setup for a minimal and aesthetically pleasing Arch Linux experience using Hyprland as the compositor. This repository provides step-by-step guidance for installation and customization to achieve a polished Wayland-based desktop environment.

---

## Prerequisites
Before beginning, ensure you have a **minimal Arch Linux installation**. This guide assumes familiarity with basic Arch Linux setup processes such as disk partitioning, bootloader installation, and system configuration.

---

## Installation
Follow the steps below to set up the required packages:

1. **Install GRUB**  
   GRUB serves as the bootloader. Ensure it’s properly configured for your setup, especially if dual-booting.  

2. **Install SDDM**  
   SDDM is a lightweight display manager, ideal for managing your login screen under Wayland.  

3. **Install Hyprland**  
   Hyprland is the heart of this setup, providing a dynamic Wayland compositor for your desktop.  

4. **Install Additional Hyprland Utilities**  
   - `hyprpaper`: For setting wallpapers.  
   - `hypridle`: For managing idle behavior.  
   - `hyprlock`: A Wayland-native screen locker.  

5. **Install Waybar**  
   A versatile status bar with optional modules for volume (pavucontrol) and Bluetooth (blueman).  

6. **Install Utility Applications**  
   - `wlogout`: For managing logout and shutdown options.  
   - `kitty`: A fast, feature-rich terminal emulator.  
   - `zsh` (with `oh-my-zsh`): A customizable shell for enhanced productivity.  
   - `dolphin`: A user-friendly file manager.  
   - `firefox`: A Wayland-compatible web browser.  
   - `code`: Visual Studio Code for development.  
   - `spotify` and `discord`: For music streaming and communication.  

---

## Customization
This section outlines the configurations for each installed component. Modify these files to personalize your setup:  

### 1. **GRUB**  
- Main configuration: `/etc/default/grub`  
- Dual booting with Windows: `/etc/grub.d/40_custom`  
- Applying themes: `/boot/grub/themes/retroboot/theme.txt`  

After making changes, update the GRUB configuration:  
```bash
sudo grub-mkconfig -o /boot/grub/grub.cfg  
sudo grub-mkconfig -o /boot/EFI/arch/grub.cfg  
```  

### 2. **SDDM**  
- Main configuration: `/etc/sddm.conf.d/default.conf`  
- Theme customization: `/usr/share/sddm/themes/sugar-candy/theme.conf`  

### 3. **Hyprland**  
- Primary configuration: `~/.config/hypr/hyprland.conf`  

### 4. **Hyprpaper**  
- Wallpaper configuration: `~/.config/hypr/hyprpaper.conf`  

### 5. **Hypridle**  
- Idle behavior: `~/.config/hypr/hypridle.conf`  

### 6. **Hyprlock**  
- Lock screen configuration: `~/.config/hypr/hyprlock.conf`  

### 7. **Waybar**  
- Configuration: `~/.config/waybar/config.jsonc`  
- Styling: `~/.config/waybar/style.css`  

### 8. **Wlogout**  
- Layout: `~/.config/wlogout/layout`  
- Styling: `~/.config/wlogout/style.css`  

### 9. **Kitty**  
- Configuration: `~/.config/kitty/kitty.conf`  
- Theme: `~/.config/kitty/theme.conf`  

### 10. **Zsh**  
- Shell configuration: `~/.zshrc`  

### 11. **Dolphin**  
- Dolphin requires minimal configuration as it integrates seamlessly with this setup.  

### 12. **Firefox**  
- Enable Wayland support for optimal performance.  

### 13. **Code**  
- Configuration file: `~/code-flags.conf`  

### 14. **Spotify**  
- Flags configuration: `~/spotify-flags.conf`  

### 15. **Discord**  
- Recommended startup flags:  
  ```bash
  --enable-features=UseOzonePlatform --ozone-platform-hint=wayland  
  ```  

---

This enhanced README ensures a smoother installation and offers additional clarity on customization options. Let me know if you'd like further refinements!
