{ pkgs }:

with pkgs.lib; {
  # Add your library functions here
  #
  # hexint = x: hexvals.${toLower x};
  zig = pkgs.callPackage ./zig.nix { };
}

