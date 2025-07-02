{config,pkgs,...}:
{
  
  environment.systemPackages = with pkgs; [
    udiskie
	  helix
    vim
    fastfetch
    gcc
    cmake
    ninja
    rustc
    rustup
    rustfmt
    rust-analyzer
    cargo
    ccache
    clang
    clang-tools
    git
    libsecret
    davinci-resolve
  ];
}
