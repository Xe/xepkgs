{ pkgs ? import <nixpkgs> { } }:

{
  # Programs
  cabytcini = pkgs.callPackage ./pkgs/cabytcini { };
  comma = pkgs.callPackage ./pkgs/comma { };
  deno = pkgs.callPackage ./pkgs/deno { };
  discord = pkgs.callPackage ./pkgs/discord { };
  dwm = pkgs.callPackage ./pkgs/dwm { };
  gopls = pkgs.callPackage ./pkgs/gopls { };
  gruvbox-css = pkgs.callPackage ./pkgs/gruvbox-css { };
  hewwo = pkgs.callPackage ./pkgs/hewwo { };
  ii = pkgs.callPackage ./pkgs/ii { };
  ix = pkgs.callPackage ./pkgs/ix { };
  johaus = pkgs.callPackage ./pkgs/johaus { };
  jvozba = pkgs.callPackage ./pkgs/jvozba { };
  lchat = pkgs.callPackage ./pkgs/lchat { inherit libutf; };
  luakit = pkgs.callPackage ./pkgs/luakit {
    inherit (pkgs.luajitPackages) luafilesystem;
  };
  minica = pkgs.callPackage ./pkgs/minica { };
  nix-simple-deploy = pkgs.callPackage ./pkgs/nix-simple-deploy { };
  orca = pkgs.callPackage ./pkgs/orca { };
  pridecat = pkgs.callPackage ./pkgs/pridecat { };
  quickserv = pkgs.callPackage ./pkgs/quickserv { };
  sctd = pkgs.callPackage ./pkgs/sctd { };
  st = pkgs.callPackage ./pkgs/st { };
  steno-lookup = pkgs.callPackage ./pkgs/steno-lookup { };
  sw = pkgs.callPackage ./pkgs/sw { };
  zathura = pkgs.callPackage ./pkgs/zathura { inherit girara; };
}
