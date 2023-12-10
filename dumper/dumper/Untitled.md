
# xorg display server installation
sudo apt install -y xserver-xorg xinit

# INCLUDES make,etc.
sudo apt install -y python3-pip 

# Qtile requirements
sudo apt install -y libpangocairo-1.0-0
sudo apt install -y python3-xcffib python3-cairocffi

# Install qtile
pip3 install qtile
pip3 install psutil

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode 

# Network Manager
sudo apt install -y network-manager-gnome

# Installation for Appearance management
sudo apt install -y lxappearance 

# File Manager (eg. pcmanfm,krusader,thunar)
sudo apt install -y thunar

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Terminal
sudo apt install -y xfce4-terminal

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Neofetch/HTOP
sudo apt install -y neofetch

# EXA

# Printing and bluetooth (if needed)
sudo apt install -y cups
# sudo apt install -y bluez blueman

# sudo systemctl enable bluetooth
sudo systemctl enable cups

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr 

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
# example if you want to use in autostart located in ~/.local/share/dwm/autostart.sh
sudo apt install -y feh
# sudo apt install -y nitrogen 

# Packages needed qtile after installation
sudo apt install -y picom dunst sxhkd rofi suckless-tools libnotify-bin unzip scrot geany geany-plugin-treebrowser

# Command line text editor -- nano preinstalled  -- I like micro but vim is great
sudo apt install -y micro
# sudo apt install -y neovim

# Install fonts and papirus icon theme and arc-theme
sudo apt install -y fonts-font-awesome fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus

jl folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Installing Lightdm
sudo apt install lightdm -y
sudo systemctl enable lightdm

# Adding qtile.desktop to Lightdm xsessions directory
cat > ./temp << "EOF"
[Desktop Entry]
Name=Qtile
Comment=Qtile Session
Type=Application
Keywords=wm;tiling
EOF
sudo cp ./temp /usr/share/xsessions/qtile.desktop;rm ./temp
u=$USER
sudo echo "Exec=/home/$u/.local/bin/qtile start"

# cozy tile
https://github.com/Darkkal44/Cozytile

# vivaldi
sudo dnf upgrade --refresh

sudo dnf config-manager --add-repo https://repo.vivaldi.com/stable/vivaldi-fedora.repo

sudo dnf install vivaldi-stable

sudo dnf install vivaldi-snapshot

# picom
https://github.com/jonaburg/picom
https://github.com/yshui/picom/releases/tag/v10.2

# arandr
sudo dnf install arandr




# lazygit
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit