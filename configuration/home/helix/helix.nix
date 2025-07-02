{pkgs,lib,inputs,...}:
{
  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {
      theme = "carbonfox";
    };

      languages = {
      language = [
        {
          name = "cpp";
          language-servers = ["ladybird"];
        }
      ];
      language-server = {
        ladybird = {
          command = "clangd";
          args = ["--header-insertion=never"];
        };
        rust-analyzer = {
          config = {
          check = {
            command = "clippy";
          };
          cargo = {
            features = "all";
          };
          };
        };
      };
      };
  };
  
}
