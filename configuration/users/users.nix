{config,pkgs,...}:
{
  
  users.users.evopot = {
    isNormalUser = true;
    description = "evopot";
    shell = pkgs.fish;
    extraGroups = [ "networkmanager" "wheel" "storage"];
  };
}
