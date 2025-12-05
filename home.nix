{ config, pkgs, inputs, ... }:

{
  imports = [
  inputs.dms.homeModules.dankMaterialShell.default
  ];

  programs.dankMaterialShell = {
  enable = true;

  default.settings = {
    theme = "dark";
    dynamicTheming = true;
   };
  };

  home.username = "elghazaly";
  home.homeDirectory = "/home/elghazaly";
  programs.git.enable = true;
  home.stateVersion = "26.05";
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo i use nixos, btw";
    };
  };

  programs.home-manager.enable = true;
  
  programs.emacs = {
    enable = true;
    extraPackages = epkgs: [
      epkgs.nix-mode
      epkgs.magit
    ];
  };
}
