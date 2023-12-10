/home/birnx/Downloads/3/left.uf2    lld
    gcc
    glibc
    clang
    udev
    llvmPackages.bintools
    wget
    procps
    killall
    zip
    unzip
    bluez
    bluez-tools
    libnotify
    brightnessctl
    light
    xdg-desktop-portal
    xdg-utils
    pipewire
    wireplumber
    alsaLib
    pkgconfig

    #### Standard Packages
    networkmanager
    networkmanagerapplet
    git
    fzf
    vim
    tldr
    sox
    yad
    flatpak

    #### GTK
    gtk2
    gtk3
    gtk4

    #### QT
    qtcreator
    qt5.qtwayland
    qt6.qtwayland
    qt6.qmake
    libsForQt5.qt5.qtwayland
    qt5ct

    #### My Packages
    helix
    brave
    xfce.thunar
    kitty
    bat
    exa
    tmux
    pavucontrol
    blueman
    trash-cli
    ydotool
    cava
    neofetch
    starship
    lolcat
    gimp
    transmission-gtk
    slurp
    gparted
    vlc
    mpv
    krabby

    #### My Proprietary Packages
    discord
    steam
    spotify

    #### Xorg Stuff :-(
    ## Libraries
    xorg.libX11
    xorg.libXcursor
    ## Window Managers
    #awesome
    ## Desktop Environments
    cinnamon.cinnamon-desktop
    ## Programs
    nitrogen
    picom
    dunst
    flameshot

    #### Programming Languages
    ## Rust
    cargo
    rustc
    rust-analyzer
    ## Go
    go
    ## R
    (pkgs.rWrapper.override {
      packages = with pkgs.rPackages; [
        dplyr
        xts
        ggplot2
        reshape2
      ];
    })
    (pkgs.rstudioWrapper.override {
      packages = with pkgs.rPackages; [
        dplyr
        xts
        ggplot2
        reshape2

        rstudioapi
      ];
    })

    #### Command Shells
    nushell

    #### Display Managers
    lightdm
    sddm
    gnome.gdm

    #### Hyprland Rice
    hyprland
    xwayland
    cliphist
    alacritty
    rofi-wayland
    swww
    swaynotificationcenter
    lxde.lxsession
    inputs.hyprwm-contrib.packages.${system}.grimblast
    gtklock
    eww-wayland
    xdg-desktop-portal-hyprland
  ];
slkjKKKk