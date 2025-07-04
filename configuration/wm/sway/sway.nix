{config,pkgs,lib,...}:
{

  environment.systemPackages = with pkgs; [
    grim
    slurp
    wl-clipboard
    mako
    ghostty
  ];

  services.gnome.gnome-keyring.enable = true;

  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    extraOptions = [
      "--unsupported-gpu"
    ];
  };


}
