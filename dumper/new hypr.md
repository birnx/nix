wget -O <https://channels.nixos.org/nixos-23.05/latest-nixos-minimal-x86_64-linux.iso>
Boot Into the Installer.

Switch to Root: sudo -i

Partitions:

I prefer to use 1GB on the EFI partition. Specifically because the 'generations' list may become very long, and to avoid overloading the partition.

# Replace nvme with your disk partition
gdisk /dev/nvme0n1
- `o` (create new partition table)
- `n` (add partition, 512M, type ef00 EFI)
- `n` (add partition, remaining space, type 8300 Linux)
`w` (write partition table and exit)
Format Partitions:
mkfs.fat -F 32 -n EFI /dev/nvme0n1p1
mkfs.xfs -L NIXOS /dev/nvme0n1p2
Mount Partitions:
mount /dev/disk/by-label/NIXOS /mnt
mkdir -p /mnt/boot
mount /dev/disk/by-label/EFI /mnt/boot
Enable nixFlakes
nix-shell -p nixFlakes git
Clone my Dotfiles
git clone --depth 1 <https://github.com/linuxmobile/kaku> /mnt/etc/nixos
Generate your Own Nix Hardware Settings:
⚠ DON'T FORGET IT
sudo nixos-generate-config --dir --force /mnt/etc/nixos/hosts/linudev

# Remove configuration.nix 
rm -rf /mnt/etc/nixos/hosts/linudev/configuration.nix
Install Dotfiles Using Flake
# Move to folder
cd mnt/etc/nixos/

# Install
nixos-install --flake kaku#linudev
Reboot
🐙 Remember Default User & password are: nixos
Change Default password for User.
passwd YourUser
Install w/ Home-Manager the config
home-manager switch --flake 'github:linuxmobile/kaku#linudev@aesthetic'
🌸 DOTFILES EXPLAIN
🌻 TODO LIST
🎋 Additional
🍀 KEY BINDINGS
💐 ACKNOWLEDGEMENTS*
Inspiration and Resources		
1	owl4ce		
2	Ilham25		
3	Siduck		
4	NvChad		
5	Rxyhn		
6	HeinzDev		
7	fufexan		
8	AmitGolden		
Based		Community	Membership Status	
🗺	3	r/unixp*rn	Not working there anymore.	
🌳 CONTRIBUTING
WIP

🎃 SECURITY POLICY
BACK TO TOP
About
革 | kaku

linu.dev/blog/kaku
Topics
dotfiles zsh nixos neofetch wayland ricing starship amdgpu unixporn secureboot wezterm nvchad hyprland
Resources
 Readme
 Activity
Stars
 96 stars
Watchers
 2 watching
Forks
 5 forks
Report repository
Languages
Nix
79.4%
 
Lua
20.6%
Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
