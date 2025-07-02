
{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./locales/locales.nix
      ./hardware-configuration.nix
      ./wm/wm.nix
      ./packages.nix

      ./users/users.nix
    ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  programs.fish.enable = true;
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;


  security.polkit.enable = true;

  nix.settings.experimental-features = ["nix-command" "flakes"];


  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.udisks2.enable = true;


  nixpkgs.config.allowUnfree = true;


  home-manager = {

    users = {
      "evopot" = import ./home/home.nix;
    };
  };

  system.stateVersion = "25.05"; 

}
