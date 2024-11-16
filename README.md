# HyprArch
Minimalistic // Lightweight // Aesthetic

# Prerequisites
1.) Minimal Arch Linux Installation

# Installation
1.) Install GRUB  
2.) Install SDDM  
3.) Install hyprland  
4.) Install hyprpaper  
5.) Install hypridle  
6.) Install hyprlock  
7.) Install waybar (pavucontrol, blueman)  
8.) Install wlogout  
9.) Install kitty  
10.) Install zsh (oh-my-zsh)  
11.) Install dolphin  
12.) Install firefox  
13.) Install code  
14.) Install spotify  
15.) Install discord  

# Customization
1.) GRUB  
main config: /etc/default/grub  
for windows 11 dual boot: /etc/grub.d/40_custom  
for GRUB theme: /boot/grub/themes/retroboot/theme.txt  
  
after modification run:  
sudo grub-mkconfig -o /boot/grub/grub.cfg  
sudo grub-mkconfig -o /boot/EFI/arch/grub.cfg  
  
2.) SDDM  
main config: /etc/sddm.conf.d/default.conf  
for SDDM theme: /usr/share/sddm/themes/sugar-candy/theme.conf  
  
3.) hyprland  
main config: ~/.config/hypr/hyprland.conf  
  
4.) hyprpaper  
main config: ~/.config/hypr/hyprpaper.conf  
  
5.) hypridle  
main config: ~/.config/hypr/hypridle.conf  
  
6.) hyprlock  
main config: ~/.config/hypr/hyprlock.conf  
  
7.) waybar  
main config: ~/.config/waybar/config.jsonc  
styling config: ~/.config/waybar/style.css  
  
8.) wlogout  
main config: ~/.config/wlogout/layout  
styling config: ~/.config/wlogout/style.css  
  
9.) kitty  
main config: ~/.config/kitty/kitty.conf  
for kitty theme: ~/.config/kitty/theme.conf  
  
10.) zsh  
main config: ~/.zshrc  
  
11.) dolphin  
  
12.) firefox  
  
13.) code  
~/code-flags.conf  
  
14.) spotify  
~/spotify-flags.conf  

15.) discord  
--enable-features=UseOzonePlatform --ozone-platform-hint=wayland  
