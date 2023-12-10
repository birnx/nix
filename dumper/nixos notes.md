# nixos notes

  
  
  home.packages = with pkgs; [ 
     # screenshot 
     grim 
     slurp 
  
     swaybg 
  
     # utils 
     ocrScript 
     wf-recorder 
     wl-clipboard 
     wlogout 
     wlr-randr 
   ];
  
  
  
  # make stuff work on wayland 
   home.sessionVariables = { 
     QT_QPA_PLATFORM = "wayland"; 
     SDL_VIDEODRIVER = "wayland"; 
     XDG_SESSION_TYPE = "wayland"; 
   };
  
  hardware.bluetooth = { 
     enable = true; 
     package = pkgs.bluez5-experimental;
  
  systemd.services.NetworkManager-wait-online.enable = lib.mkForce false;

in hardware.nix:
powerManagement.cpuFreqGovernor = lib.mkDefault "performance";

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;



<https://m.youtube.com/watch?v=C5eAecVeO_c&t=13s>

flake migration guide
<https://youtu.be/Hox4wByw5pY>


I just made a list of learning resources that I used to understand NixOS, so perfect timing!  
section1 = {  
masterTheBasics.enable = true;  
1- <https://zero-to-nix.com/> (Overall review);  
2- <https://nix.dev/> (Overall review alternative);  
3- <https://youtu.be/9fWrxmEYGAs> Best installation guide (for the calamares installer ISO);  
4- <https://youtu.be/C5eAecVeO\_c> Home-manager intro + how to make nix modules;  
5- <https://youtu.be/DXz3FJszfo0> Flakes intro + convert your system config into a flake.  
};   
Section 2 = {  
bonusResources.enable = true;  
How to build your own nix package : <https://elatov.github.io/2022/01/building-a-nix-package/;>  
Build Dev-shells, images, home-manager configs and even your own NixOS in the browser: <https://mynixos.com/> (Yes, in the BROWSER!).  
};  
Section 3 = {  
workInProgress.enable = true;  
<https://docs.nix.zone/;>  
};  
Bro explains declaratively k


![[Screenshot_20230711_142853_YouTube.jpg]]

<https://drakerossman.com/blog>

<https://nixos-and-flakes.thiscute.world/>