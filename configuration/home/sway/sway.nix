{pkgs,lib,inputs,...}:
{


  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    config = rec {
      modifier = "Mod4";
      terminal = "ghostty";


      startup = [
        {
          command = "udiskie &";
        }
      ];
      bars = [
        {
          position = "top";
        }
      ];
      
    };
  };
}
