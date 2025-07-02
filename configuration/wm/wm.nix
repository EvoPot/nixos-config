{config,pkgs,...}:
{
  # This directory is for storing the login manager/window manager
  imports = [
    ./sway/sway.nix
    ./ly/ly.nix
  ];
}
