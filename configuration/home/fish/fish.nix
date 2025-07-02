{pkgs,lib,inputs,...}:
{
  
  programs.fish = {
    enable = true;
    interactiveShellInit = "fastfetch";
    shellInit = ''
      set -gx PATH $HOME/.cargo/bin $PATH

    '';
    shellAbbrs = {
      h = "hx";
      gaa = "git add .";
      gco = "git checkout";
      gs = "git status";
      gl = "git log";
      gcm = "git commit -m";
      cr = "cargo run";
      c = "cargo";
      cb = "cargo build";
      ca = "cargo add";
      cab = "cargo add --build";
      
      
    };
  };
}
