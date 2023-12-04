{
  config,
  pkgs,
  ...
}: let
  username = "birnx";
in {
  imports = [
    ./hardware-configuration.nix
    <home-manager/nixos>
  ];

  boot.kernelPackages = pkgs.linuxPackages_latest;

  nixpkgs.config.allowUnfree = true;

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "eldon";
  networking.networkmanager.enable = true;

  nix.settings.experimental-features = ["nix-command" "flakes"];


  services.openssh = {
    enable = true;
    ports = [3148];
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = false;
    };
  };

  # Set your time zone.
  time.timeZone = "America/Los_Angeles";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  hardware.bluetooth.enable = true;
  hardware.bluetooth.package = pkgs.bluez5-experimental;

  services.blueman.enable = true;

  hardware.opengl.enable = true;
  hardware.opengl.driSupport = true;
  hardware.opengl.driSupport32Bit = true;
  hardware.opengl.extraPackages = with pkgs; [
    amdvlk
  ];

  services.xserver.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;
  services.xserver.displayManager.sddm.enable = true;

  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  programs.fish.enable = true;

  security.sudo.wheelNeedsPassword = false;

  users.users.${username} = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = ["onepassword-cli" "wireshark" "networkmanager" "wheel"];
    packages = with pkgs; [
    ];
  };

  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;

  programs.waybar.enable = true;

  programs.ssh.startAgent = true;

  environment.systemPackages = with pkgs; [
    neovim
    luajitPackages.jsregexp

    p7zip
    asar

    xfce.thunar-volman

    qt6Packages.qtstyleplugin-kvantum
    libsForQt5.qtstyleplugin-kvantum
    catppuccin-kvantum
    libsForQt5.polkit-kde-agent
    go
    wl-clipboard
    cliphist
    glxinfo
    jq
    wmctrl
    xorg.xdpyinfo
    tree
    dmidecode
    doas
    file
    hddtemp
    ipmitool
    freeipmi
    smartmontools
    lm_sensors
    usbutils
    bluez-tools
    #sysvinit
    perl536Packages.IOSocketSSL
    perl536Packages.JSONXS
    perl536Packages.libxml_perl
    ];

    system.stateVersion = "23.05";

    home-manager.users.${username} = {pkgs, ...}: {
    nixpkgs.config.allowUnfree = true;
    nixpkgs.config.permittedInsecurePackages = [
      "electron-24.8.6"
    ];

    home.packages = with pkgs; [
      manix
      lolcat
      gum
      nnn
      vimPlugins.nnn-vim
      xplr
      hyprpaper
      wireshark
      bat
      eza
      rustc
      zoxide
      httpie
      tldr
      hyperfine
      glances
      spotify
      spotifyd
      nixd
      alejandra
      spicetify-cli

      todoist
      todoist-electron

      yewtube
      yt-dlp
      youtube-dl
      ffmpeg_6-full
      wrk2
      gping

      discord-ptb

      glow
      tasktimer
      vivaldi
      vivaldi-ffmpeg-codecs
      nb
      swww
      waypaper
      swaylock
      swayidle

      fishPlugins.fzf-fish
      fishPlugins.tide
      fishPlugins.grc
      fishPlugins.autopair
      fzf
      mpv
      gh
      obsidian
      _1password-gui-beta
      _1password
      lsd
      zellij
      lazygit
      kitty
      git
      curl
      cargo
      cmake
      gcc
      btop
      amdgpu_top
      brave
      nerdfonts
      ripgrep
      fd
      tree-sitter
      nodejs
      wget
      unzip
      firefox
      grc
      telegram-desktop
      inxi
      electron
      node2nix
      qFlipper
      ungoogled-chromium
      netflix
      fontconfig
      freetype
      libnotify
      xdg-utils
      bash-completion
      xfce.thunar
      wayland-protocols
      pkg-config
      wavebox
      wl-clipboard
      wlogout
      wlr-randr
      swaynotificationcenter
      grim
      slurp
      swaybg
      pavucontrol
    ];

    programs.fish = {
      enable = true;
    };

    #home.sessionVariables = {
    #  SHELL = "${pkgs.fish}/bin/fish";
    #};

    programs.foot = {
      enable = true;
      server.enable = true;
    };

    programs.fuzzel = {
      enable = true;
    };

    
    home.stateVersion = "23.05";
 

  };


  
   
}
