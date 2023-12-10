---
id: b80a76d6-aadf-4e64-a9ee-b4a38f5f09d1
---

# GitHub - fufexan/dotfiles: NixOS system config & Home-Manager user config
#Omnivore

[Read on Omnivore](https://omnivore.app/me/https-github-com-fufexan-dotfiles-188b2d9e371)
[Read Original](https://github.com/fufexan/dotfiles)


## fufexan/dotfiles

## 🗒 About

In-house baked configs for Home-Manager and NixOS. Borrowed bits sprinkled on top. Using [flakes](https://nixos.wiki/wiki/Flakes) and[flake-parts](https://github.com/hercules-ci/flake-parts).

See an overview of the flake outputs by running`nix flake show github:fufexan/dotfiles`.

## 🗃️ Contents

* [modules](https://github.com/fufexan/dotfiles/blob/main/modules): NixOS common configs
* [hosts](https://github.com/fufexan/dotfiles/blob/main/hosts): host-specific configuration
* [home](https://github.com/fufexan/dotfiles/blob/main/home): my [Home Manager](https://github.com/nix-community/home-manager) config
* [lib](https://github.com/fufexan/dotfiles/blob/main/lib): helper functions
* [pkgs](https://github.com/fufexan/dotfiles/blob/main/pkgs): package definitions

## 📦 Exported packages

Run packages directly with:

nix run github:fufexan/dotfiles#packageName

Or install from the `packages` output. For example:

# flake.nix
{
  inputs.fufexan-dotfiles.url = "github:fufexan/dotfiles";
  # Override my nixpkgs, binary cache will have less hits
  inputs.fufexan-dotfiles.inputs.nixpkgs.follows = "nixpkgs";
}

# configuration.nix
{pkgs, inputs, ...}: {
  environment.systemPackages = [
    inputs.fufexan-dotfiles.packages."x86_64-linux".packageName
  ];
}

## 💻 Desktop preview

[ ![Desktop Preview](https://proxy-prod.omnivore-image-cache.app/0x0,strszIDnIspwGIJ0HjT_iQvy4fkjN1Fsrrtp4FU-TX8A/https://user-images.githubusercontent.com/36706276/236707086-ea6cb781-8b0c-45d3-b6a1-2c6a4d5e2582.png) ](https://drive.google.com/file/d/1W-bwn3UwbMxReiiNqMmq38noa7Xw0Gj1/preview)\*Hint: click to go to a video showcase\* Previous versions [![Desktop Preview](https://proxy-prod.omnivore-image-cache.app/0x0,sDAv1bf3YLZxOGKTZiFkBeXpRhS0Bft_lb6ISMVKlQiU/https://user-images.githubusercontent.com/36706276/216402032-ff32fcad-ca21-49d3-9c29-6ff0d2d8b1d8.png)](https://user-images.githubusercontent.com/36706276/216402032-ff32fcad-ca21-49d3-9c29-6ff0d2d8b1d8.png) 

## 💾 Resources

Other configurations from where I learned and copied:

* [colemickens/nixcfg](https://github.com/colemickens/nixcfg)
* [flake-utils-plus](https://github.com/gytis-ivaskevicius/flake-utils-plus)
* [gytis-ivaskevicius/nixfiles](https://github.com/gytis-ivaskevicius/nixfiles)
* [Mic92/dotfiles](https://github.com/Mic92/dotfiles)
* [NobbZ/nixos-config](https://github.com/NobbZ/nixos-config)
* [privatevoid-net/privatevoid-infrastructure](https://github.com/privatevoid-net/privatevoid-infrastructure)
* [RicArch97/nixos-config](https://github.com/RicArch97/nixos-config)
* [viperML/dotfiles](https://github.com/viperML/dotfiles)

## 👥 People

These are the people whom I've taken inspiration from while writing these configs. There surely are more but I tend to forget. Regardless, I am thankful to all of them.

DieracDelta - gytis-ivaskevicius - hlissner - keksbg - Kranzes - matthewcroughan - max-privatevoid - Misterio77 - NobbZ - OPNA2608 - pnotequalnp - RicArch97 - tadeokondrak - viperML - Xe - yusdacra